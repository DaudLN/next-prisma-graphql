import { graphqlClient } from "@/app/graphql/graphql-client";
import { graphql } from "@/gql/gql";
type Props = {
  params: {
    slug: string;
  };
};

const GET_PRODUCT_BY_SLUG = graphql(/* GraphQL */ `
  query GetProduct($input: GetProductInputType) {
    product(input: $input) {
      primary_key
      unique_id
      title
      description
      price
      slug
      image
    }
  }
`);
const Product = async ({ params: { slug } }: Props) => {
  const { product } = await graphqlClient.request(GET_PRODUCT_BY_SLUG, {
    input: { slug },
  });

  return (
    <div className="p-4 bg-gray-50 m-4 rounded">
      <h3 className="text-2xl font-semibold">{product.title}</h3>
      <p>{product.description}</p>
    </div>
  );
};

export default Product;
