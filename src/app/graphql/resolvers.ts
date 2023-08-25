import { xprisma, prisma } from "@/utils/prismaClient";
import { CreateProductInputType } from "./inputTypes";
import { YogaInitialContext } from "graphql-yoga";
import tryCatch from "./try-catch";
import { GraphQLResolveInfo } from "graphql";

export const resolvers = {
  Query: {
    products: async () => {
      return tryCatch(
        () => xprisma.product.findMany(),
        "Failed to fetch products. Please try again later.",
        400
      );
    },
    categories: async () => {
      return tryCatch(
        () => xprisma.category.findMany(),
        "Failed to fetch categories. Please try again later.",
        400
      );
    },
    category: async (parent: any, slug: string) => {
      return prisma.category.findUniqueOrThrow({
        where: { slug },
      });
    },

    product: async (_: any, slug: string, context: YogaInitialContext) => {
      return tryCatch(
        () =>
          prisma.product.findUniqueOrThrow({
            where: { slug },
          }),
        "No product found with this slug.",
        404
      );
    },
  },

  Mutation: {
    createProduct: async (
      parent: any,
      { input }: { input: CreateProductInputType },
      context: YogaInitialContext,
      info: GraphQLResolveInfo
    ) =>
      tryCatch(
        () => {
          return prisma.product.create({
            data: input,
          });
        },
        "Failed to create product. Please try again later.",
        400
      ),
  },
};
