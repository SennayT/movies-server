import { ZodError } from 'zod';
import { configSchema } from './schema';
import { Logger } from '@nestjs/common';

export function validate(config: Record<string, unknown>) {
  try {
    return configSchema.parse(config);
  } catch (err) {
    if (err instanceof ZodError) {
      err.errors.forEach((e) => {
        console.error(`${e.path}: ${e.message}`);
      });
      throw new Error('Error validating schema');
    } else {
      throw err;
    }
  }
}

export function getEnvFile() {
  const logger = new Logger('Env Setup');
  const environment = process.env.NODE_ENV;
  logger.debug(`Using Environment ${environment}`);
  if (environment === 'production') {
    logger.debug('Using file .production.env for environment variables');
    return '.production.env';
  }
  if (environment === 'development') {
    logger.debug('Using file .env for environment variables');
    return '.env';
  }
  if (environment === 'staging') {
    logger.debug('Using file .staging.env for environment variables');
    return '.staging.env';
  }
  logger.debug('Unkown environment. Using file .env for environment variables');
  return '.env';
}
