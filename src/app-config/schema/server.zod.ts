import { z } from 'zod';

export const serverSchema = {
  PORT: z.number({
    coerce: true, //so strings are converted to numbers
    invalid_type_error: 'PORT must be a number',
    required_error: 'PORT is required',
  }),
};
