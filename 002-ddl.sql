CREATE TABLE dim_customer (
    customer_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    email TEXT,
    country_name TEXT,
    postal_code TEXT
);

CREATE TABLE dim_seller (
    seller_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    country_name TEXT,
    postal_code TEXT
);

CREATE TABLE dim_product (
    product_id SERIAL PRIMARY KEY,
    name TEXT,
    category_name TEXT,
    price NUMERIC,
    quantity INTEGER,
    weight NUMERIC,
    brand_name TEXT,
    description TEXT,
    rating NUMERIC,
    reviews INTEGER,
    release_date DATE,
    expiry_date DATE
);

CREATE TABLE dim_supplier (
    supplier_id SERIAL PRIMARY KEY,
    name TEXT,
    contact TEXT,
    email TEXT,
    phone TEXT,
    address TEXT,
    city TEXT,
    country_name TEXT
);

CREATE TABLE dim_store (
    store_id SERIAL PRIMARY KEY,
    store_name TEXT,
    location TEXT,
    city TEXT,
    state TEXT,
    country_name TEXT,
    phone TEXT,
    email TEXT
);

CREATE TABLE fact_sales (
    sale_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES dim_customer(customer_id),
    seller_id INTEGER REFERENCES dim_seller(seller_id),
    product_id INTEGER REFERENCES dim_product(product_id),
    supplier_id INTEGER REFERENCES dim_supplier(supplier_id),
    store_id INTEGER REFERENCES dim_store(store_id),
    sale_date DATE,
    quantity INTEGER,
    total_price NUMERIC
);