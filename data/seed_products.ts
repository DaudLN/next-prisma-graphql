import { PrismaClient } from "@prisma/client";
import { products } from "./productData";
const prisma = new PrismaClient();

async function main() {
  await prisma.product.createMany({ data: products });
}

main()
  .catch((error) => {
    console.error(error);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
