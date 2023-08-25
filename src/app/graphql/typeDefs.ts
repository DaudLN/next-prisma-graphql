const typeDefs = /* GraphQL */ `
  scalar DateTime

  input CreateProductInputType {
    title: String
    description: String
    price: Float
    slug: String
    is_featured: Boolean
    image: String
    category_slug: String
  }

  type Category {
    primary_key: ID
    unique_id: String
    title: String
    description: String
    color: String
    slug: String
    image: String
  }

  type Product {
    primary_key: ID
    unique_id: String
    title: String
    description: String
    price: Float
    slug: String
    is_featured: Boolean
    image: String
    category_slug: String
  }

  type Query {
    products: [Product]!
    product(slug: String!): [Product]!
    category(slug: String!): Category
    categories: [Category]!
  }

  type Mutation {
    createProduct(input: CreateProductInputType): Product!
  }
`;

export default typeDefs;
