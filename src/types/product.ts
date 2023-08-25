export default interface ProductData {
  primary_key: number;
  unique_id: string;
  title: string;
  description: string;
  price: number;
  slug: string;
  isFeatured: boolean;
  image: string;
  category_slug: string;
  options: Option[];
}

interface Option {
  size?: string;
  price?: number;
}
