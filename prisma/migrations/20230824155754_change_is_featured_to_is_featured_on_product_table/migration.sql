/*
  Warnings:

  - You are about to drop the column `isFeatured` on the `Product` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Product" DROP COLUMN "isFeatured",
ADD COLUMN     "is_featured" BOOLEAN NOT NULL DEFAULT false;
