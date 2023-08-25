--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Debian 15.4-1.pgdg120+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-0ubuntu0.23.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Category; Type: TABLE; Schema: public; Owner: restaurant
--

CREATE TABLE public."Category" (
    primary_key integer NOT NULL,
    unique_id text NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    color text NOT NULL,
    slug text NOT NULL,
    image text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."Category" OWNER TO restaurant;

--
-- Name: Category_primary_key_seq; Type: SEQUENCE; Schema: public; Owner: restaurant
--

CREATE SEQUENCE public."Category_primary_key_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Category_primary_key_seq" OWNER TO restaurant;

--
-- Name: Category_primary_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: restaurant
--

ALTER SEQUENCE public."Category_primary_key_seq" OWNED BY public."Category".primary_key;


--
-- Name: Order; Type: TABLE; Schema: public; Owner: restaurant
--

CREATE TABLE public."Order" (
    primary_key integer NOT NULL,
    unique_id text NOT NULL,
    price numeric(65,30) NOT NULL,
    products jsonb[],
    status text NOT NULL,
    strip_id text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."Order" OWNER TO restaurant;

--
-- Name: Order_primary_key_seq; Type: SEQUENCE; Schema: public; Owner: restaurant
--

CREATE SEQUENCE public."Order_primary_key_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Order_primary_key_seq" OWNER TO restaurant;

--
-- Name: Order_primary_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: restaurant
--

ALTER SEQUENCE public."Order_primary_key_seq" OWNED BY public."Order".primary_key;


--
-- Name: Product; Type: TABLE; Schema: public; Owner: restaurant
--

CREATE TABLE public."Product" (
    primary_key integer NOT NULL,
    unique_id text NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    price numeric(65,30) NOT NULL,
    slug text NOT NULL,
    "isFeatured" boolean DEFAULT false NOT NULL,
    image text NOT NULL,
    category_slug text NOT NULL,
    options jsonb[],
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."Product" OWNER TO restaurant;

--
-- Name: Product_primary_key_seq; Type: SEQUENCE; Schema: public; Owner: restaurant
--

CREATE SEQUENCE public."Product_primary_key_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Product_primary_key_seq" OWNER TO restaurant;

--
-- Name: Product_primary_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: restaurant
--

ALTER SEQUENCE public."Product_primary_key_seq" OWNED BY public."Product".primary_key;


--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: restaurant
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO restaurant;

--
-- Name: Category primary_key; Type: DEFAULT; Schema: public; Owner: restaurant
--

ALTER TABLE ONLY public."Category" ALTER COLUMN primary_key SET DEFAULT nextval('public."Category_primary_key_seq"'::regclass);


--
-- Name: Order primary_key; Type: DEFAULT; Schema: public; Owner: restaurant
--

ALTER TABLE ONLY public."Order" ALTER COLUMN primary_key SET DEFAULT nextval('public."Order_primary_key_seq"'::regclass);


--
-- Name: Product primary_key; Type: DEFAULT; Schema: public; Owner: restaurant
--

ALTER TABLE ONLY public."Product" ALTER COLUMN primary_key SET DEFAULT nextval('public."Product_primary_key_seq"'::regclass);


--
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: restaurant
--

INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (23, 'cllmska4t000movxcbliz3of3', 'French', 'Elegant and refined French dishes for a special evening.', '#53E68E', 'french', 'french.jpg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (1, 'cllmska4t0000ovxcctjwj5me', 'Appetizers', 'Delicious starters to awaken your taste buds.', '#FF5733', 'appetizers', 'appetizers.jpg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (28, 'cllmska4t000rovxc0f56jzvi', 'Gourmet Burgers', 'Elevated and gourmet twists on classic burger favorites.', '#E685B3', 'gourmet-burgers', 'gourmet-burgers.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (4, 'cllmska4t0003ovxcaul5tq84', 'Salads', 'Healthy and vibrant salads to tantalize your taste buds.', '#53A5E6', 'salads', 'salad.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (24, 'cllmska4t000novxcgpowmads', 'Soups', 'Comforting and flavorful soups to warm your soul.', '#E6B953', 'soups', 'soup.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (27, 'cllmska4t000qovxcdqzoc5ih', 'Wines', 'A curated selection of wines to complement your meal.', '#53B0E6', 'wines', 'wines.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (6, 'cllmska4t0005ovxcmhd2j7ny', 'Seafood', 'Fresh and succulent seafood dishes for seafood lovers.', '#5E7BE6', 'seafood', 'seafood.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (22, 'cllmska4t000lovxcmdk6e6y3', 'Indian', 'Experience the spices and aromas of Indian cooking.', '#E6536D', 'indian', 'indian.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (20, 'cllmska4t000jovxcozbckh1i', 'Noodles', 'Indulge in flavorful noodle dishes from around the world.', '#E6A753', 'noodles', 'noodles.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (19, 'cllmska4t000iovxcrmr5xl35', 'Middle Eastern', 'Explore the rich flavors of Middle Eastern cuisine.', '#53E6D1', 'middle-eastern', 'middle-eastern.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (14, 'cllmska4t000dovxcief1e13g', 'Mediterranean', 'Savor the tastes of the Mediterranean with fresh ingredients.', '#E6A953', 'mediterranean', 'mediterranean.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (2, 'cllmska4t0001ovxcwq760d6b', 'Main Courses', 'Satisfying dishes that are the heart of the meal.', '#5BBFBA', 'main-courses', 'main-courses.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (3, 'cllmska4t0002ovxc6d54iiv4', 'Beverages', 'Refreshing drinks to quench your thirst.', '#4CAF50', 'beverages', 'beverages.webp', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (7, 'cllmska4t0006ovxc0bazyanu', 'Vegetarian', 'Plant-based delights for those who prefer vegetarian options.', '#64A844', 'vegetarian', 'vegetarian.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (8, 'cllmska4t0007ovxctde25wud', 'Steaks', 'Tender and flavorful steaks cooked to perfection.', '#E68553', 'steaks', 'steak.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (10, 'cllmska4t0009ovxcjv8bzs5z', 'Sushi', 'Artfully crafted sushi rolls for sushi enthusiasts.', '#53E6C5', 'sushi', 'sushi.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (9, 'cllmska4t0008ovxcsg63d7o8', 'Burgers', 'Juicy and flavorful burgers with a variety of toppings.', '#E653A9', 'burgers', 'barger.jpg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (11, 'cllmska4t000aovxcm9zbzult', 'Desserts', 'Decadent desserts that satisfy your sweet cravings.', '#E6C953', 'desserts', 'desserts.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (12, 'cllmska4t000bovxcmg4pb6gy', 'Cocktails', 'Inventive cocktails for those looking to unwind.', '#A953E6', 'cocktails', 'cocktails.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (15, 'cllmska4t000eovxcsdrqotlo', 'Coffee & Tea', 'Warm beverages to start your day or relax in the evening.', '#53E6E1', 'coffee-tea', 'coffee-tea.webp', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (16, 'cllmska4t000fovxcaqs865a4', 'Barbecue', 'Smoky and savory barbecue dishes for meat lovers.', '#E6AC53', 'barbecue', 'barbecue.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (17, 'cllmska4t000govxc44xgyrja', 'Italian', 'Authentic Italian dishes that transport you to Italy.', '#5373E6', 'italian', 'italian.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (18, 'cllmska4t000hovxc9be99aj0', 'Breakfast', 'Start your day with a hearty and delicious breakfast.', '#C953E6', 'breakfast', 'break-fast.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (5, 'cllmska4t0004ovxcl4m6edkf', 'Pizzas', 'Delicious pizzas with a variety of toppings.', '#E65E53', 'pizzas', 'pizza.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (13, 'cllmska4t000covxc2kqrcl0x', 'Asian Fusion', 'A fusion of flavors from various Asian cuisines.', '#53E6B9', 'asian-fusion', 'asian.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (26, 'cllmska4t000povxcsi86ghe1', 'Latin American', 'Discover the vibrant flavors of Latin American cuisine.', '#E66C53', 'latin-american', 'latin-america.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (21, 'cllmska4t000kovxchqcvl90d', 'Tapas', 'Shareable small plates inspired by Spanish cuisine.', '#537AE6', 'tapas', 'tapas.jpeg', '2023-08-22 21:01:46.445');
INSERT INTO public."Category" (primary_key, unique_id, title, description, color, slug, image, created_at) VALUES (25, 'cllmska4t000oovxc20962w6j', 'Juices & Smoothies', 'Refresh with nutritious and refreshing juices and smoothies.', '#5391E6', 'juices-smoothies', 'juices-smoothies.webp', '2023-08-22 21:01:46.445');


--
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: restaurant
--



--
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: restaurant
--

INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (2, 'cllmtw5av0001ove7i3fza2ea', 'Grilled Salmon', 'Grilled salmon fillet with lemon and herbs.', 18.990000000000000000000000000000, 'grilled-salmon', true, 'grilled-salmon.jpg', 'seafood', '{"{\"side\": \"Steamed Vegetables\"}","{\"side\": \"Mashed Potatoes\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (3, 'cllmtw5av0002ove7yf38zekz', 'Vegan Beyond Burger', 'Plant-based Beyond Burger with lettuce and tomato.', 13.990000000000000000000000000000, 'vegan-beyond-burger', true, 'vegan-beyond-burger.jpg', 'vegetarian', '{"{\"spiceLevel\": \"Mild\"}","{\"spiceLevel\": \"Spicy\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (4, 'cllmtw5av0003ove7ciam1ive', 'Ribeye Steak', 'Juicy ribeye steak cooked to perfection.', 24.990000000000000000000000000000, 'ribeye-steak', false, 'ribeye-steak.jpg', 'steaks', '{"{\"cooking\": \"Medium Rare\"}","{\"cooking\": \"Medium\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (5, 'cllmtw5av0004ove7i346omz9', 'Classic Cheeseburger', 'Cheeseburger with lettuce, tomato, and cheese.', 10.990000000000000000000000000000, 'classic-cheeseburger', false, 'classic-cheeseburger.jpg', 'burgers', '{"{\"cheeseType\": \"Cheddar\"}","{\"cheeseType\": \"Swiss\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (6, 'cllmtw5av0005ove7879bpkld', 'Rainbow Sushi Roll', 'Assorted sushi rolls with colorful ingredients.', 14.990000000000000000000000000000, 'rainbow-sushi-roll', true, 'rainbow-sushi-roll.jpg', 'sushi', '{"{\"soySauce\": \"Regular\"}","{\"soySauce\": \"Low Sodium\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (7, 'cllmtw5av0006ove76mon2k3s', 'Tiramisu', 'Classic Italian dessert with layers of coffee-soaked ladyfingers.', 8.990000000000000000000000000000, 'tiramisu', true, 'tiramisu.jpg', 'desserts', '{"{\"size\": \"Slice\"}","{\"size\": \"Whole Cake\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (8, 'cllmtw5av0007ove7mjqt47ym', 'Mango Mojito', 'Refreshing cocktail with fresh mango and mint.', 7.990000000000000000000000000000, 'mango-mojito', true, 'mango-mojito.jpg', 'cocktails', '{"{\"alcohol\": \"Regular\"}","{\"alcohol\": \"Mocktail\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (9, 'cllmtw5av0008ove7adrdhub2', 'Greek Salad', 'Traditional Greek salad with feta cheese and olives.', 9.990000000000000000000000000000, 'greek-salad', false, 'greek-salad.jpg', 'salads', '{"{\"dressing\": \"Olive Oil & Vinegar\"}","{\"dressing\": \"Lemon Herb\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (10, 'cllmtw5av0009ove72tdfktg3', 'Chicken Shawarma', 'Sliced chicken in pita bread with tahini sauce.', 11.990000000000000000000000000000, 'chicken-shawarma', false, 'chicken-shawarma.jpg', 'middle-eastern', '{"{\"spiceLevel\": \"Mild\"}","{\"spiceLevel\": \"Spicy\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (11, 'cllmtw5av000aove7nybjyh4u', 'Fettuccine Alfredo', 'Creamy Alfredo sauce with fettuccine pasta.', 14.990000000000000000000000000000, 'fettuccine-alfredo', false, 'fettuccine-alfredo.jpg', 'italian', '{"{\"addChicken\": true}","{\"addShrimp\": true}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (12, 'cllmtw5av000bove7l9ag1fbj', 'Egg Benedict', 'Poached eggs on English muffins with hollandaise sauce.', 10.990000000000000000000000000000, 'egg-benedict', false, 'egg-benedict.jpg', 'breakfast', '{"{\"side\": \"Hash Browns\"}","{\"side\": \"Fruit Salad\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (13, 'cllmtw5av000cove7fm7sn1qs', 'Caprese Salad', 'Fresh mozzarella, tomatoes, and basil drizzled with balsamic.', 8.990000000000000000000000000000, 'caprese-salad', false, 'caprese-salad.jpg', 'salads', '{"{\"dressing\": \"Balsamic Vinaigrette\"}","{\"dressing\": \"Lemon Basil\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (14, 'cllmtw5av000dove70y9d3sp4', 'Spaghetti Carbonara', 'Creamy pasta with egg, cheese, and pancetta.', 13.990000000000000000000000000000, 'spaghetti-carbonara', true, 'spaghetti-carbonara.jpg', 'italian', '{"{\"addChicken\": true}","{\"addShrimp\": true}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (15, 'cllmtw5av000eove7wbk34790', 'Mango Lassi', 'Refreshing yogurt-based drink with ripe mango.', 5.990000000000000000000000000000, 'mango-lassi', true, 'mango-lassi.jpg', 'indian', '{"{\"spiceLevel\": \"Mild\"}","{\"spiceLevel\": \"Medium\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (16, 'cllmtw5av000fove7rkw62hz7', 'Churros', 'Crispy fried dough sticks coated in cinnamon sugar.', 6.990000000000000000000000000000, 'churros', true, 'churros.jpg', 'desserts', '{"{\"dip\": \"Chocolate\"}","{\"dip\": \"Caramel\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (17, 'cllmtw5av000gove7wp7kpn9p', 'Tandoori Chicken', 'Marinated and roasted chicken with Indian spices.', 15.990000000000000000000000000000, 'tandoori-chicken', false, 'tandoori-chicken.jpg', 'indian', '{"{\"spiceLevel\": \"Mild\"}","{\"spiceLevel\": \"Spicy\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (18, 'cllmtw5av000hove7kv4t2i26', 'Creme Brulee', 'Creamy custard dessert with a caramelized sugar topping.', 7.990000000000000000000000000000, 'creme-brulee', false, 'creme-brulee.jpg', 'desserts', '{"{\"size\": \"Small\"}","{\"size\": \"Large\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (19, 'cllmtw5av000iove7brbs5e3c', 'Pho', 'Traditional Vietnamese noodle soup with beef and herbs.', 11.990000000000000000000000000000, 'pho', false, 'pho.jpg', 'noodles', '{"{\"broth\": \"Beef Broth\"}","{\"broth\": \"Chicken Broth\"}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (1, 'cllmtw5av0000ove72ft16rqb', 'Classic Margherita Pizza', 'Fresh tomatoes, mozzarella, basil leaves.', 12.990000000000000000000000000000, 'classic-margherita', true, 'classic-margherita.jpg', 'pizzas', '{"{\"size\": \"Medium\", \"price\": 12.99}","{\"size\": \"Large\", \"price\": 15.99}"}', '2023-08-22 21:38:59.662');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (20, 'cllncr0hf0000ov6s5atkns7d', 'Chicken Alfredo Pasta', 'Creamy pasta with grilled chicken and Alfredo sauce.', 14.990000000000000000000000000000, 'chicken-alfredo', true, 'chicken-alfredo.jpg', 'main-courses', '{}', '2023-08-23 06:26:52.852');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (21, 'cllncr0hf0001ov6sa1vscg2c', 'Triple Chocolate Cake', 'Decadent chocolate cake with layers of chocolate goodness.', 8.990000000000000000000000000000, 'triple-chocolate-cake', false, 'triple-chocolate-cake.jpg', 'desserts', '{}', '2023-08-23 06:26:52.852');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (22, 'cllncr0hf0002ov6sb5o2jekj', 'Iced Caramel Macchiato', 'A refreshing iced coffee with caramel and milk.', 4.490000000000000000000000000000, 'iced-caramel-macchiato', true, 'iced-caramel-macchiato.jpg', 'beverages', '{"{\"size\": \"Tall\", \"price\": 4.49}","{\"size\": \"Grande\", \"price\": 5.49}","{\"size\": \"Venti\", \"price\": 6.49}"}', '2023-08-23 06:26:52.852');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (23, 'cllncr0hf0003ov6s5ab1w7p8', 'Mushroom Risotto', 'Creamy risotto with sautéed mushrooms and parmesan cheese.', 10.990000000000000000000000000000, 'mushroom-risotto', false, 'mushroom-risotto.jpg', 'main-courses', '{}', '2023-08-23 06:26:52.852');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (24, 'cllncr0hf0004ov6sgud0ra4d', 'Chocolate Lava Cake', 'Warm and gooey chocolate cake with a molten center.', 7.990000000000000000000000000000, 'chocolate-lava-cake', true, 'chocolate-lava-cake.jpg', 'desserts', '{}', '2023-08-23 06:26:52.852');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (25, 'cllncr0hf0005ov6st7d0y7e6', 'Matcha Latte', 'Creamy latte infused with Japanese matcha green tea.', 4.990000000000000000000000000000, 'matcha-latte', true, 'matcha-latte.jpg', 'beverages', '{"{\"size\": \"Regular\", \"price\": 4.99}","{\"size\": \"Large\", \"price\": 5.99}"}', '2023-08-23 06:26:52.852');
INSERT INTO public."Product" (primary_key, unique_id, title, description, price, slug, "isFeatured", image, category_slug, options, created_at) VALUES (26, 'cllncr0hf0006ov6szk8w4uz7', 'Cheeseburger', 'A classic cheeseburger with lettuce, tomato, and cheese.', 9.990000000000000000000000000000, 'cheeseburger', false, 'cheeseburger.jpg', 'burgers', '{"{\"size\": \"Single Patty\", \"price\": 9.99}","{\"size\": \"Double Patty\", \"price\": 12.99}"}', '2023-08-23 06:26:52.852');


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: restaurant
--

INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('d791acf5-691d-4e07-82a3-07d7e754b506', 'e3737f47fcf6a57a98a570ed7b89242a7c1e95111a6472a995e851b4d51d44f3', '2023-08-22 21:01:40.156741+00', '20230822203002_initial', NULL, NULL, '2023-08-22 21:01:39.422475+00', 1);


--
-- Name: Category_primary_key_seq; Type: SEQUENCE SET; Schema: public; Owner: restaurant
--

SELECT pg_catalog.setval('public."Category_primary_key_seq"', 28, true);


--
-- Name: Order_primary_key_seq; Type: SEQUENCE SET; Schema: public; Owner: restaurant
--

SELECT pg_catalog.setval('public."Order_primary_key_seq"', 1, false);


--
-- Name: Product_primary_key_seq; Type: SEQUENCE SET; Schema: public; Owner: restaurant
--

SELECT pg_catalog.setval('public."Product_primary_key_seq"', 33, true);


--
-- Name: Category Category_pkey; Type: CONSTRAINT; Schema: public; Owner: restaurant
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (unique_id);


--
-- Name: Order Order_pkey; Type: CONSTRAINT; Schema: public; Owner: restaurant
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (unique_id);


--
-- Name: Product Product_pkey; Type: CONSTRAINT; Schema: public; Owner: restaurant
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (unique_id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: restaurant
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: Category_primary_key_key; Type: INDEX; Schema: public; Owner: restaurant
--

CREATE UNIQUE INDEX "Category_primary_key_key" ON public."Category" USING btree (primary_key);


--
-- Name: Category_slug_key; Type: INDEX; Schema: public; Owner: restaurant
--

CREATE UNIQUE INDEX "Category_slug_key" ON public."Category" USING btree (slug);


--
-- Name: Category_title_key; Type: INDEX; Schema: public; Owner: restaurant
--

CREATE UNIQUE INDEX "Category_title_key" ON public."Category" USING btree (title);


--
-- Name: Order_primary_key_key; Type: INDEX; Schema: public; Owner: restaurant
--

CREATE UNIQUE INDEX "Order_primary_key_key" ON public."Order" USING btree (primary_key);


--
-- Name: Order_strip_id_key; Type: INDEX; Schema: public; Owner: restaurant
--

CREATE UNIQUE INDEX "Order_strip_id_key" ON public."Order" USING btree (strip_id);


--
-- Name: Product_primary_key_key; Type: INDEX; Schema: public; Owner: restaurant
--

CREATE UNIQUE INDEX "Product_primary_key_key" ON public."Product" USING btree (primary_key);


--
-- Name: Product_slug_key; Type: INDEX; Schema: public; Owner: restaurant
--

CREATE UNIQUE INDEX "Product_slug_key" ON public."Product" USING btree (slug);


--
-- Name: Product_title_key; Type: INDEX; Schema: public; Owner: restaurant
--

CREATE UNIQUE INDEX "Product_title_key" ON public."Product" USING btree (title);


--
-- Name: Product Product_category_slug_fkey; Type: FK CONSTRAINT; Schema: public; Owner: restaurant
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_category_slug_fkey" FOREIGN KEY (category_slug) REFERENCES public."Category"(slug) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

