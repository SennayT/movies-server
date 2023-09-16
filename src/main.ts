import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { Logger } from '@nestjs/common';
import { AppConfigService } from './app-config/app-config.service';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  const config = app.get(AppConfigService);
  const PORT = config.get('PORT');

  const logger = new Logger('bootstrap');

  await app.listen(PORT);
  logger.debug(`Server running on port ${PORT}`);
}
bootstrap();
