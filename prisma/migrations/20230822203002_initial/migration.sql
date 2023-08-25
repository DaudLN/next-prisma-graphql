-- CreateTable
CREATE TABLE "Category" (
    "primary_key" SERIAL NOT NULL,
    "unique_id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("unique_id")
);

-- CreateTable
CREATE TABLE "Product" (
    "primary_key" SERIAL NOT NULL,
    "unique_id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "price" DECIMAL(65,30) NOT NULL,
    "slug" TEXT NOT NULL,
    "isFeatured" BOOLEAN NOT NULL DEFAULT false,
    "image" TEXT NOT NULL,
    "category_slug" TEXT NOT NULL,
    "options" JSONB[],
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("unique_id")
);

-- CreateTable
CREATE TABLE "Order" (
    "primary_key" SERIAL NOT NULL,
    "unique_id" TEXT NOT NULL,
    "price" DECIMAL(65,30) NOT NULL,
    "products" JSONB[],
    "status" TEXT NOT NULL,
    "strip_id" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Order_pkey" PRIMARY KEY ("unique_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Category_primary_key_key" ON "Category"("primary_key");

-- CreateIndex
CREATE UNIQUE INDEX "Category_title_key" ON "Category"("title");

-- CreateIndex
CREATE UNIQUE INDEX "Category_slug_key" ON "Category"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "Product_primary_key_key" ON "Product"("primary_key");

-- CreateIndex
CREATE UNIQUE INDEX "Product_title_key" ON "Product"("title");

-- CreateIndex
CREATE UNIQUE INDEX "Product_slug_key" ON "Product"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "Order_primary_key_key" ON "Order"("primary_key");

-- CreateIndex
CREATE UNIQUE INDEX "Order_strip_id_key" ON "Order"("strip_id");

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_category_slug_fkey" FOREIGN KEY ("category_slug") REFERENCES "Category"("slug") ON DELETE RESTRICT ON UPDATE CASCADE;
