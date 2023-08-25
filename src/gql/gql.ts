/* eslint-disable */
import * as types from './graphql';
import { TypedDocumentNode as DocumentNode } from '@graphql-typed-document-node/core';

/**
 * Map of all GraphQL operations in the project.
 *
 * This map has several performance disadvantages:
 * 1. It is not tree-shakeable, so it will include all operations in the project.
 * 2. It is not minifiable, so the string of a GraphQL query will be multiple times inside the bundle.
 * 3. It does not support dead code elimination, so it will add unused operations.
 *
 * Therefore it is highly recommended to use the babel or swc plugin for production.
 */
const documents = {
    "\n  query GetCategory($input: GetCategoryInputType) {\n    category(input: $input) {\n      primary_key\n      unique_id\n      title\n      description\n      slug\n      color\n      image\n    }\n  }\n": types.GetCategoryDocument,
    "\n  query GetAllCategories {\n    categories {\n      primary_key\n      unique_id\n      title\n      description\n      slug\n      image\n      color\n    }\n  }\n": types.GetAllCategoriesDocument,
    "\n  query GetProduct($input: GetProductInputType) {\n    product(input: $input) {\n      primary_key\n      unique_id\n      title\n      description\n      price\n      slug\n      image\n    }\n  }\n": types.GetProductDocument,
    "\n  query GetAllProducts {\n    products {\n      primary_key\n      unique_id\n      title\n      description\n      price\n      slug\n      image\n    }\n  }\n": types.GetAllProductsDocument,
};

/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 *
 *
 * @example
 * ```ts
 * const query = graphql(`query GetUser($id: ID!) { user(id: $id) { name } }`);
 * ```
 *
 * The query argument is unknown!
 * Please regenerate the types.
 */
export function graphql(source: string): unknown;

/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function graphql(source: "\n  query GetCategory($input: GetCategoryInputType) {\n    category(input: $input) {\n      primary_key\n      unique_id\n      title\n      description\n      slug\n      color\n      image\n    }\n  }\n"): (typeof documents)["\n  query GetCategory($input: GetCategoryInputType) {\n    category(input: $input) {\n      primary_key\n      unique_id\n      title\n      description\n      slug\n      color\n      image\n    }\n  }\n"];
/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function graphql(source: "\n  query GetAllCategories {\n    categories {\n      primary_key\n      unique_id\n      title\n      description\n      slug\n      image\n      color\n    }\n  }\n"): (typeof documents)["\n  query GetAllCategories {\n    categories {\n      primary_key\n      unique_id\n      title\n      description\n      slug\n      image\n      color\n    }\n  }\n"];
/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function graphql(source: "\n  query GetProduct($input: GetProductInputType) {\n    product(input: $input) {\n      primary_key\n      unique_id\n      title\n      description\n      price\n      slug\n      image\n    }\n  }\n"): (typeof documents)["\n  query GetProduct($input: GetProductInputType) {\n    product(input: $input) {\n      primary_key\n      unique_id\n      title\n      description\n      price\n      slug\n      image\n    }\n  }\n"];
/**
 * The graphql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function graphql(source: "\n  query GetAllProducts {\n    products {\n      primary_key\n      unique_id\n      title\n      description\n      price\n      slug\n      image\n    }\n  }\n"): (typeof documents)["\n  query GetAllProducts {\n    products {\n      primary_key\n      unique_id\n      title\n      description\n      price\n      slug\n      image\n    }\n  }\n"];

export function graphql(source: string) {
  return (documents as any)[source] ?? {};
}

export type DocumentType<TDocumentNode extends DocumentNode<any, any>> = TDocumentNode extends DocumentNode<  infer TType,  any>  ? TType  : never;