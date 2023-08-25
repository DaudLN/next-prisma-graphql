import { GraphQLError } from "graphql";

class CustomGraphQLError extends GraphQLError {
  code: number;
  constructor(
    message: string,
    code: number,
    nodes?: ReadonlyArray<any>,
    source?: any,
    positions?: ReadonlyArray<number>,
    path?: ReadonlyArray<string | number>,
    originalError?: any,
    extensions?: Record<string, any>
  ) {
    super(message, {
      nodes,
      source,
      positions,
      path,
      originalError,
      extensions,
    });
    this.code = code;
  }
}

export default CustomGraphQLError;
