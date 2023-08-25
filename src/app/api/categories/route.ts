import { NextResponse } from "next/server";
import { xprisma } from "@/utils/prismaClient";
import CategoryData from "@/types/category";

export const GET = async () => {
  try {
    const categories = await xprisma.category.findMany({ where: {} });
    return new NextResponse<CategoryData[]>(JSON.stringify(categories), {
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
