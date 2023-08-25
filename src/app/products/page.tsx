import { graphqlClient } from "@/app/graphql/graphql-client";
import { graphql } from "@/gql/gql";
import Link from "next/link";

const GET_ALL_PRODUCTS = graphql(/* GraphQL */ `
  query GetAllProducts {
    products {
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

const ProductsPage = async () => {
  const { products } = await graphqlClient.request(GET_ALL_PRODUCTS, {});
  return (
    <div className="flex items-center flex-col">
      <h2 className="text-center text-3xl font-bold">Products page</h2>

      <ul className="p-3 w-2/3">
        {products.map((product) => (
          <li
            key={product?.primary_key}
            className="p-4 bg-gray-50 hover:shadow-md mb-4 transition-all duration-300"
          >
            <Link href={`/products/${product?.slug}`}> {product?.title}</Link>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default ProductsPage;
