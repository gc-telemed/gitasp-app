import { OAuth2RequestError } from "arctic";
import { github, lucia, prisma } from "../../../lib/auth";

import type { APIContext } from "astro";

export async function GET(context: APIContext): Promise<Response> {
	const code = context.url.searchParams.get("code");
	const state = context.url.searchParams.get("state");
	const storedState = context.cookies.get("github_oauth_state")?.value ?? null;
	if (!code || !state || !storedState || state !== storedState) {
		return new Response(null, {
			status: 400
		});
	}

	try {
		const tokens = await github.validateAuthorizationCode(code);
		const githubUserResponse = await fetch("https://api.github.com/user", {
			headers: {
				Authorization: `Bearer ${tokens.accessToken}`
			}
		});
		const githubUser: GitHubUser = await githubUserResponse.json();

		const existingUser = await prisma.user.findFirst({
      where: {
        accounts: {
          every: {
            provider: "github",
            providerAccountId: githubUser.id
          }
        }
      }
    });

		if (existingUser) {
			const session = await lucia.createSession(existingUser.id, {});
			const sessionCookie = lucia.createSessionCookie(session.id);
			context.cookies.set(sessionCookie.name, sessionCookie.value, sessionCookie.attributes);
			return context.redirect("/");
		}

		const created = await prisma.user.create({
      data: {
        username: githubUser.login,
        accounts: {
          create: [{
            type: "oauth",
            provider: "github",
            providerAccountId: githubUser.id
          }]
        }
      },
      select: {
        id: true
      }
		});

		const session = await lucia.createSession(created.id, {});
		const sessionCookie = lucia.createSessionCookie(session.id);
		context.cookies.set(sessionCookie.name, sessionCookie.value, sessionCookie.attributes);
		return context.redirect("/");
	} catch (e) {
		// the specific error message depends on the provider
		if (e instanceof OAuth2RequestError) {
			// invalid code
			return new Response(null, {
				status: 400
			});
		}
		return new Response(null, {
			status: 500
		});
	}
}

interface GitHubUser {
	id: string;
	login: string;
}
