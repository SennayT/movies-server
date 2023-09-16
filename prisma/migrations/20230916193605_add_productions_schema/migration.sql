-- CreateTable
CREATE TABLE "Production" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Production_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MovieProduction" (
    "movieId" TEXT NOT NULL,
    "productionId" TEXT NOT NULL,

    CONSTRAINT "MovieProduction_pkey" PRIMARY KEY ("movieId","productionId")
);

-- AddForeignKey
ALTER TABLE "MovieProduction" ADD CONSTRAINT "MovieProduction_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES "Movie"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MovieProduction" ADD CONSTRAINT "MovieProduction_productionId_fkey" FOREIGN KEY ("productionId") REFERENCES "Production"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
