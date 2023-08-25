import { graphqlClient } from "@/app/graphql/graphql-client";
import CategoryCard from "@/components/CategoryCard";
import { graphql } from "@/gql/gql";

interface Props {
  params: {
    category: string;
  };
}

const GET_ALL_CATEGORIES = graphql(/* GraphQL */ `
  query GetAllCategories {
    categories {
      primary_key
      unique_id
      title
      description
      slug
      image
      color
    }
  }
`);

const MenuPage = async () => {
  const { categories } = await graphqlClient.request(GET_ALL_CATEGORIES);

  if (!categories) throw new Error("An error occurred while fetching data");
  return (
    <div>
      <div className="w-full flex flex-wrap h-1/3 gap-12 bg-cover py-8 md:h-1/2 items-center justify-center ">
        {categories.map((category) => {
          return <CategoryCard category={category} key={category?.slug} />;
        })}
      </div>
    </div>
  );
};

export default MenuPage;
