-- CreateTable
CREATE TABLE "Country" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Country_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MovieCountry" (
    "movieId" TEXT NOT NULL,
    "countryId" TEXT NOT NULL,

    CONSTRAINT "MovieCountry_pkey" PRIMARY KEY ("movieId","countryId")
);

-- AddForeignKey
ALTER TABLE "MovieCountry" ADD CONSTRAINT "MovieCountry_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES "Movie"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MovieCountry" ADD CONSTRAINT "MovieCountry_countryId_fkey" FOREIGN KEY ("countryId") REFERENCES "Country"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
