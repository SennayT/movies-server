import { z } from 'zod';
import { serverSchema } from './schema/server.zod';
import { databaseSchema } from './schema/db.zod';

export const configSchema = z.object({
  ...serverSchema,
  ...databaseSchema,
});

export type ConfigSchema = z.infer<typeof configSchema>;
