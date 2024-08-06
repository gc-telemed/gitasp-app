import Credentials from '@auth/core/providers/credentials';
import { hash } from '@node-rs/argon2';
import { defineConfig } from 'auth-astro';

import { PrismaClient } from "@prisma/client";

export const client = new PrismaClient();


export default defineConfig({
  providers: [
    Credentials({
      name: 'Credentials',
      credentials: {
        username: { label: "Username", type: "text"},
        password: { label: "Password", type: "password"},
      },
      authorize: async (credentials) => {

        // logic to salt and hash password
        const pwHash = await hash(String(credentials.password), {
          // recommended minimum parameters
          memoryCost: 19456,
          timeCost: 2,
          outputLen: 32,
          parallelism: 1
        });

        // logic to verify if the user exists
        const user = await client.user.findUniqueOrThrow({
          where: {
            username: String(credentials.username),
            password: pwHash
          }
        });

        // return user object with their profile data
        return user;
      },
    }),
  ],
});
