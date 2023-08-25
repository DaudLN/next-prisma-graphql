const typeDefs = /* GraphQL */ `
  scalar DateTime

  input GetProductInputType {
    slug: String!
  }

  input GetCategoryInputType {
    slug: String!
  }

  input CreateProductInputType {
    title: String!
    description: String!
    price: Float!
    slug: String!
    is_featured: Boolean!
    image: String!
    category_slug: String!
  }

  type Category {
    primary_key: ID!
    unique_id: String!
    title: String!
    description: String!
    color: String!
    slug: String!
    image: String!
  }

  type Product {
    primary_key: ID!
    unique_id: String!
    title: String!
    description: String!
    price: Float!
    slug: String!
    is_featured: Boolean!
    image: String!
    category_slug: String!
  }

  type Query {
    products: [Product]!
    product(input: GetProductInputType): Product!
    category(input: GetCategoryInputType): Category!
    categories: [Category]!
  }

  type Mutation {
    createProduct(input: CreateProductInputType): Product!
  }
`;

export default typeDefs;
