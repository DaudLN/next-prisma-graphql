import { xprisma, prisma } from "@/utils/prismaClient";
import {
  CreateProductInputType,
  GetCategoryInputType,
  GetProductInputType,
} from "./inputTypes";
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
    category: async (
      parent: any,
      { input }: { input: GetCategoryInputType }
    ) => {
      return tryCatch(
        () =>
          prisma.category.findUniqueOrThrow({
            where: { slug: input.slug },
          }),
        "No category found",
        400
      );
    },

    product: async (
      _: any,
      { input }: { input: GetProductInputType },
      context: YogaInitialContext
    ) => {
      return tryCatch(
        () =>
          prisma.product.findUniqueOrThrow({
            where: { slug: input.slug },
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
