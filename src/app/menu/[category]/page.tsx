import CategoryData from "@/types/category";

interface Props {
  params: {
    category: string;
  };
}

const getData = async (category: string) => {
  const res = await fetch(
    `http://localhost:3000/api/products/?category=${category}`,
    {
      cache: "no-store",
    }
  );

  if (!res.ok) {
    throw new Error(`HTTP error! status: ${res.status}`);
  }
  return res.json();
};

const CategoryPage = async ({ params: { category } }: Props) => {
  const data: CategoryData = await getData(category);
  console.log(data);
  return <div>Hello</div>;
};

export default CategoryPage;
