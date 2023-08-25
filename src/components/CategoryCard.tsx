import CategoryData from "@/types/category";
import Image from "next/image";
import Link from "next/link";

type Props = {
  category: CategoryData;
};

const CategoryCard = ({ category }: Props) => {
  return (
    <article
      style={{ backgroundColor: category.color }}
      className={`pb-4 transition-all ease-in-out duration-300 w-72  border border-red-950 cursor-pointer shadow-md`}
    >
      <Link href={`/category/${category.slug}`}>
        <Image
          className="object-contain"
          src={`/images/${category.image}`}
          width={500}
          height={100}
          alt={category.title}
        />
        <div className="mx-6">
          <h3 className="text-2xl font-normal">{category.title}</h3>
          <p className="text-sm truncate ...">{category.description}</p>
        </div>
      </Link>
    </article>
  );
};

export default CategoryCard;
