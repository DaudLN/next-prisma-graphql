import { createSchema, createYoga } from "graphql-yoga";
import typeDefs from "./typeDefs";
import { resolvers } from "./resolvers";

const schema = createSchema({
  typeDefs,
  resolvers,
});

const { handleRequest } = createYoga({
  schema,
  graphqlEndpoint: "/graphql",
  graphiql: true,
  multipart: true,
  fetchAPI: {
    Request: Request,
    Response: Response,
  },
  cors: {
    origin: "http://localhost:4000",
    credentials: true,
    allowedHeaders: ["X-Custom-Header"],
    methods: ["POST"],
  },
  context(context) {
    return {};
  },
});

export { handleRequest as POST, handleRequest as GET };
