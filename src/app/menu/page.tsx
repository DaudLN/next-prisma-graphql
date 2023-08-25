import CategoryCard from "@/components/CategoryCard";
import CategoryData from "@/types/category";

interface Props {
  params: {
    category: string;
  };
}

const getData = async (category: string) => {
  const res = await fetch("http://localhost:3000/api/categories", {
    cache: "no-store",
  });

  if (!res.ok) {
    throw new Error(`HTTP error! status: ${res.status}`);
  }
  return res.json();
};

const MenuPage = async ({ params: { category } }: Props) => {
  const data: CategoryData[] = await getData(category);

  return (
    <div>
      <div className="w-full flex flex-wrap h-1/3 gap-12 bg-cover py-8 md:h-1/2 items-center justify-center ">
        {data.map((category) => {
          return <CategoryCard category={category} key={category.slug} />;
        })}
      </div>
    </div>
  );
};

export default MenuPage;
