import { graphqlClient } from "@/app/graphql/graphql-client";
import CategoryCard from "@/components/CategoryCard";
import { graphql } from "@/gql/gql";
interface Props {
  params: {
    slug: string;
  };
}

const GET_CATEGORY_BY_SLUG = graphql(/* GraphQL */ `
  query GetCategory($input: GetCategoryInputType) {
    category(input: $input) {
      primary_key
      unique_id
      title
      description
      slug
      color
      image
    }
  }
`);

const CategoryPage = async ({ params: { slug } }: Props) => {
  const { category } = await graphqlClient.request(GET_CATEGORY_BY_SLUG, {
    input: { slug },
  });
  return <CategoryCard category={category} />;
};

export default CategoryPage;
