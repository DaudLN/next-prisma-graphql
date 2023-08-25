export type GetProductInputType = {
  slug: string;
};

export type CreateProductInputType = {
  title: string;
  description: string;
  price: number;
  slug: string;
  is_featured: boolean;
  image: string;
  category_slug: string;
};
