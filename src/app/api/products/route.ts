import { prisma } from "@/utils/prismaClient";
import { NextRequest, NextResponse } from "next/server";

export const GET = async (request: NextRequest) => {
  const { searchParams } = new URL(request.url);
  const category = searchParams.get("category");
  try {
    const products = await prisma.product.findMany({
      where: {
        ...(category
          ? { category_slug: { contains: category.toLowerCase() } }
          : {}),
      },
    });
    return new NextResponse(JSON.stringify(products), {
      status: 200,
    });
  } catch {
    return new NextResponse(
      JSON.stringify({ message: "Something went wrong" }),
      {
        status: 500,
      }
    );
  }
};
