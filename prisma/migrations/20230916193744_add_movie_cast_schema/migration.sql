-- CreateTable
CREATE TABLE "Cast" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Cast_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MovieCast" (
    "movieId" TEXT NOT NULL,
    "castId" TEXT NOT NULL,

    CONSTRAINT "MovieCast_pkey" PRIMARY KEY ("movieId","castId")
);

-- AddForeignKey
ALTER TABLE "MovieCast" ADD CONSTRAINT "MovieCast_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES "Movie"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MovieCast" ADD CONSTRAINT "MovieCast_castId_fkey" FOREIGN KEY ("castId") REFERENCES "Cast"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
