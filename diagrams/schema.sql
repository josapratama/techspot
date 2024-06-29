CREATE TABLE "orders" (
  "id" int PRIMARY KEY,
  "user_id" int UNIQUE NOT NULL,
  "status" varchar,
  "created_at" varchar
);

CREATE TABLE "order_items" (
  "order_id" int,
  "product_id" int,
  "quantity" int
);

CREATE TABLE "products" (
  "id" varchar PRIMARY KEY,
  "name" varchar,
  "imageUrl" varchar,
  "price" money,
  "sku" varchar,
  "brand_id" varchar,
  "created_at" datetime,
  "updated_at" datetime
);

CREATE TABLE "brands" (
  "id" varchar PRIMARY KEY,
  "type" varchar,
  "name" varchar,
  "founded" datetime,
  "founder" varchar,
  "Headquarters" varchar,
  "created_at" datetime,
  "updated_at" datetime
);

ALTER TABLE "order_items" ADD FOREIGN KEY ("order_id") REFERENCES "orders" ("id");

ALTER TABLE "order_items" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "products" ADD FOREIGN KEY ("brand_id") REFERENCES "brands" ("id");
