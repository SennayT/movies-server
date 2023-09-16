import { z } from 'zod';

export const databaseSchema = {
  DATABASE_URL: z.string({
    invalid_type_error: 'DATABASE_URL must be a string',
    required_error: 'DATABASE_URL is required',
  }),
  POSTGRES_USER: z.string(),
  POSTGRES_PASSWORD: z.string(),
  POSTGRES_PORT: z.string(),
  POSTGRES_HOST: z.string(),
  DB_NAME: z.string(),
};
