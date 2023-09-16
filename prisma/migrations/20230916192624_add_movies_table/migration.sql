-- CreateEnum
CREATE TYPE "MovieType" AS ENUM ('Movie', 'Series');

-- CreateTable
CREATE TABLE "Movie" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "length" INTEGER NOT NULL,
    "release" TIMESTAMP(3) NOT NULL,
    "type" "MovieType" NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "Movie_pkey" PRIMARY KEY ("id")
);
