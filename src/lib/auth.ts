import { GitHub } from "arctic";
import { PrismaAdapter } from "@lucia-auth/adapter-prisma"
import { PrismaClient } from "@prisma/client"
import { Lucia } from "lucia";

export const prisma = new PrismaClient();

export const adapter = new PrismaAdapter(prisma.session, prisma.user);


export const lucia = new Lucia(adapter, {
	sessionCookie: {
		attributes: {
			secure: import.meta.env.PROD
		}
	},
	getUserAttributes: (attributes) => {
		return {
			username: attributes.username,
			githubId: attributes.github_id
		};
	}
});

declare module "lucia" {
	interface Register {
		Lucia: typeof lucia;
		DatabaseUserAttributes: DatabaseUserAttributes;
	}
}

interface DatabaseUserAttributes {
	github_id: number;
	username: string;
}

export const github = new GitHub(
	import.meta.env.GITHUB_CLIENT_ID,
	import.meta.env.GITHUB_CLIENT_SECRET
);
