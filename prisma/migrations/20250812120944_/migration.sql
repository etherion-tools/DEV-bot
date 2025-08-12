/*
  Warnings:

  - Added the required column `tokenId` to the `Alert` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Alert" ADD COLUMN     "lastTriggered" TIMESTAMP(3),
ADD COLUMN     "tokenId" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "Token" (
    "id" TEXT NOT NULL,
    "address" TEXT NOT NULL,

    CONSTRAINT "Token_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TokenPrice" (
    "id" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "tokenId" TEXT NOT NULL,

    CONSTRAINT "TokenPrice_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Token_address_key" ON "Token"("address");

-- CreateIndex
CREATE INDEX "TokenPrice_timestamp_idx" ON "TokenPrice"("timestamp");

-- CreateIndex
CREATE INDEX "TokenPrice_tokenId_idx" ON "TokenPrice"("tokenId");

-- AddForeignKey
ALTER TABLE "Alert" ADD CONSTRAINT "Alert_tokenId_fkey" FOREIGN KEY ("tokenId") REFERENCES "Token"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TokenPrice" ADD CONSTRAINT "TokenPrice_tokenId_fkey" FOREIGN KEY ("tokenId") REFERENCES "Token"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
