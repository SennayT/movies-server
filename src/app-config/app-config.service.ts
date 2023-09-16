import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { ConfigSchema } from './schema';

@Injectable()
export class AppConfigService {
  constructor(private config: ConfigService) {}

  get(key: keyof ConfigSchema) {
    return this.config.get(key);
  }
}
