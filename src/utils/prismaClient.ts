import { PrismaClient } from "@prisma/client";

const prismaClientSingleton = () => {
  return new PrismaClient();
};

type PrismaClientSingleton = ReturnType<typeof prismaClientSingleton>;

const globalForPrisma = globalThis as unknown as {
  prisma: PrismaClientSingleton | undefined;
};

const prisma = globalForPrisma.prisma ?? prismaClientSingleton();

const xprisma = prisma.$extends({
  name: "customPrisma",
  query: {
    product: {
      async findMany({ model, operation, args, query }) {
        args.orderBy = { price: "asc", ...args.orderBy };
        return query(args);
      },
    },
    category: {
      async findMany({ model, operation, args, query }) {
        args.orderBy = { title: "asc", ...args.orderBy };
        return query(args);
      },
    },
  },
});

if (process.env.NODE_ENV !== "production") globalForPrisma.prisma = prisma;

export { prisma, xprisma };
