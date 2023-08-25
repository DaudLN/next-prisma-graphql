/* eslint-disable */
import { TypedDocumentNode as DocumentNode } from '@graphql-typed-document-node/core';
export type Maybe<T> = T | null;
export type InputMaybe<T> = Maybe<T>;
export type Exact<T extends { [key: string]: unknown }> = { [K in keyof T]: T[K] };
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]?: Maybe<T[SubKey]> };
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]: Maybe<T[SubKey]> };
export type MakeEmpty<T extends { [key: string]: unknown }, K extends keyof T> = { [_ in K]?: never };
export type Incremental<T> = T | { [P in keyof T]?: P extends ' $fragmentName' | '__typename' ? T[P] : never };
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: { input: string; output: string; }
  String: { input: string; output: string; }
  Boolean: { input: boolean; output: boolean; }
  Int: { input: number; output: number; }
  Float: { input: number; output: number; }
  DateTime: { input: any; output: any; }
};

export type Category = {
  __typename?: 'Category';
  color: Scalars['String']['output'];
  description: Scalars['String']['output'];
  image: Scalars['String']['output'];
  primary_key: Scalars['ID']['output'];
  slug: Scalars['String']['output'];
  title: Scalars['String']['output'];
  unique_id: Scalars['String']['output'];
};

export type CreateProductInputType = {
  category_slug: Scalars['String']['input'];
  description: Scalars['String']['input'];
  image: Scalars['String']['input'];
  is_featured: Scalars['Boolean']['input'];
  price: Scalars['Float']['input'];
  slug: Scalars['String']['input'];
  title: Scalars['String']['input'];
};

export type GetCategoryInputType = {
  slug: Scalars['String']['input'];
};

export type GetProductInputType = {
  slug: Scalars['String']['input'];
};

export type Mutation = {
  __typename?: 'Mutation';
  createProduct: Product;
};


export type MutationCreateProductArgs = {
  input?: InputMaybe<CreateProductInputType>;
};

export type Product = {
  __typename?: 'Product';
  category_slug: Scalars['String']['output'];
  description: Scalars['String']['output'];
  image: Scalars['String']['output'];
  is_featured: Scalars['Boolean']['output'];
  price: Scalars['Float']['output'];
  primary_key: Scalars['ID']['output'];
  slug: Scalars['String']['output'];
  title: Scalars['String']['output'];
  unique_id: Scalars['String']['output'];
};

export type Query = {
  __typename?: 'Query';
  categories: Array<Maybe<Category>>;
  category: Category;
  product: Product;
  products: Array<Maybe<Product>>;
};


export type QueryCategoryArgs = {
  input?: InputMaybe<GetCategoryInputType>;
};


export type QueryProductArgs = {
  input?: InputMaybe<GetProductInputType>;
};

export type GetCategoryQueryVariables = Exact<{
  input?: InputMaybe<GetCategoryInputType>;
}>;


export type GetCategoryQuery = { __typename?: 'Query', category: { __typename?: 'Category', primary_key: string, unique_id: string, title: string, description: string, slug: string, color: string, image: string } };

export type GetAllCategoriesQueryVariables = Exact<{ [key: string]: never; }>;


export type GetAllCategoriesQuery = { __typename?: 'Query', categories: Array<{ __typename?: 'Category', primary_key: string, unique_id: string, title: string, description: string, slug: string, image: string, color: string } | null> };

export type GetProductQueryVariables = Exact<{
  input?: InputMaybe<GetProductInputType>;
}>;


export type GetProductQuery = { __typename?: 'Query', product: { __typename?: 'Product', primary_key: string, unique_id: string, title: string, description: string, price: number, slug: string, image: string } };

export type GetAllProductsQueryVariables = Exact<{ [key: string]: never; }>;


export type GetAllProductsQuery = { __typename?: 'Query', products: Array<{ __typename?: 'Product', primary_key: string, unique_id: string, title: string, description: string, price: number, slug: string, image: string } | null> };


export const GetCategoryDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"GetCategory"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NamedType","name":{"kind":"Name","value":"GetCategoryInputType"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"category"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"primary_key"}},{"kind":"Field","name":{"kind":"Name","value":"unique_id"}},{"kind":"Field","name":{"kind":"Name","value":"title"}},{"kind":"Field","name":{"kind":"Name","value":"description"}},{"kind":"Field","name":{"kind":"Name","value":"slug"}},{"kind":"Field","name":{"kind":"Name","value":"color"}},{"kind":"Field","name":{"kind":"Name","value":"image"}}]}}]}}]} as unknown as DocumentNode<GetCategoryQuery, GetCategoryQueryVariables>;
export const GetAllCategoriesDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"GetAllCategories"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"categories"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"primary_key"}},{"kind":"Field","name":{"kind":"Name","value":"unique_id"}},{"kind":"Field","name":{"kind":"Name","value":"title"}},{"kind":"Field","name":{"kind":"Name","value":"description"}},{"kind":"Field","name":{"kind":"Name","value":"slug"}},{"kind":"Field","name":{"kind":"Name","value":"image"}},{"kind":"Field","name":{"kind":"Name","value":"color"}}]}}]}}]} as unknown as DocumentNode<GetAllCategoriesQuery, GetAllCategoriesQueryVariables>;
export const GetProductDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"GetProduct"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NamedType","name":{"kind":"Name","value":"GetProductInputType"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"product"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"primary_key"}},{"kind":"Field","name":{"kind":"Name","value":"unique_id"}},{"kind":"Field","name":{"kind":"Name","value":"title"}},{"kind":"Field","name":{"kind":"Name","value":"description"}},{"kind":"Field","name":{"kind":"Name","value":"price"}},{"kind":"Field","name":{"kind":"Name","value":"slug"}},{"kind":"Field","name":{"kind":"Name","value":"image"}}]}}]}}]} as unknown as DocumentNode<GetProductQuery, GetProductQueryVariables>;
export const GetAllProductsDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"GetAllProducts"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"products"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"primary_key"}},{"kind":"Field","name":{"kind":"Name","value":"unique_id"}},{"kind":"Field","name":{"kind":"Name","value":"title"}},{"kind":"Field","name":{"kind":"Name","value":"description"}},{"kind":"Field","name":{"kind":"Name","value":"price"}},{"kind":"Field","name":{"kind":"Name","value":"slug"}},{"kind":"Field","name":{"kind":"Name","value":"image"}}]}}]}}]} as unknown as DocumentNode<GetAllProductsQuery, GetAllProductsQueryVariables>;