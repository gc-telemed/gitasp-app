
import { PrismaAdapter } from "@lucia-auth/adapter-prisma"
import { PrismaClient } from "@prisma/client"
import { Lucia } from "lucia";

export const prisma = new PrismaClient()

export const adapter = new PrismaAdapter(prisma.session, prisma.user);

export const lucia = new Lucia(adapter, {
	sessionCookie: {
		attributes: {
			// set to `true` when using HTTPS
			secure: import.meta.env.PROD
		}
	}
});


declare module "lucia" {
	interface Register {
		Lucia: typeof lucia;
	}
}
