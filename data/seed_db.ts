import { PrismaClient } from "@prisma/client";
import data from "./data";
const prisma = new PrismaClient();

async function main() {
  await prisma.category.createMany({ data: data });
}

main()
  .catch((error) => {
    console.error(error);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
