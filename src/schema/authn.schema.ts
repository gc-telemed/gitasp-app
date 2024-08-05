import { z } from "zod";

export const signInSchema = z.object({
  username: z.string().min(2).max(50),
  password: z.string().min(6)
});

export type SignInSchema = z.infer<typeof signInSchema>;


export const signUpSchema = z.object({
  username: z.string().min(2).max(50),
  password: z.string().min(6),
  password2: z.string().min(6),
});

export type SignUpSchema = z.infer<typeof signUpSchema>;
