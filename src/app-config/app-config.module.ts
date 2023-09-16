import { Global, Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { getEnvFile, validate } from './validate';
import { AppConfigService } from './app-config.service';

@Global()
@Module({
  imports: [
    ConfigModule.forRoot({
      validate,
      envFilePath: getEnvFile(),
    }),
  ],
  providers: [AppConfigService],
  exports: [AppConfigService],
})
export class AppConfigModule {}
