export const prerender = false;

import { client } from "@/lib/db/auth";
// pages/api/signup.ts

import { hash } from "@node-rs/argon2";


import type { APIContext } from "astro";

export async function POST(context: APIContext): Promise<Response> {
	const formData = await context.request.formData();
	const username = formData.get("username");
	// username must be between 4 ~ 31 characters, and only consists of lowercase letters, 0-9, -, and _
	// keep in mind some database (e.g. mysql) are case insensitive
	if (
		typeof username !== "string" ||
		username.length < 3 ||
		username.length > 31 ||
		!/^[a-z0-9_-]+$/.test(username)
	) {
		return new Response("Invalid username", {
			status: 400
		});
	}
	const password = formData.get("password");
	if (typeof password !== "string" || password.length < 6 || password.length > 255) {
		return new Response("Invalid password", {
			status: 400
		});
	}

	const passwordHash = await hash(password, {
		// recommended minimum parameters
		memoryCost: 19456,
		timeCost: 2,
		outputLen: 32,
		parallelism: 1
	});

  const foundUser = await client.user.findUnique({
    where: {
      username
    },
    select: {
      username: true
    }
  });

  if (foundUser) {
    return new Response(JSON.stringify({ message: "User already exists" }), {
      status: 400,
      headers: {
        'Content-Type': 'application/json'
      }
    });
  } else {
    await client.user.create({
      data: {
        username,
        password: passwordHash
      }
    });
  }

	return context.redirect("/cliniq");
}
