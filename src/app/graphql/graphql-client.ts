import { GraphQLClient } from "graphql-request";

export const graphqlClient = new GraphQLClient(
  process.env.GRAPHQL_URL as string,
  { headers: { "x-api-key": process.env.API_KEY as string } }
);
