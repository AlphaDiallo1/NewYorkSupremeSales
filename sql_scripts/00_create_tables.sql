-- STORES
CREATE TABLE stores (
  store_id INT PRIMARY KEY,
  store_name TEXT NOT NULL,
  neighborhood TEXT NOT NULL,  -- e.g., St. George, New Dorp, Great Kills
  borough TEXT NOT NULL DEFAULT 'Staten Island',
  opened_date DATE NOT NULL
);

-- CUSTOMERS
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name TEXT, last_name TEXT, email TEXT UNIQUE,
  phone TEXT, dob DATE, gender TEXT,
  city TEXT DEFAULT 'Staten Island', state TEXT DEFAULT 'NY',
  join_date DATE NOT NULL,
  loyalty_tier TEXT  -- Bronze/Silver/Gold/Platinum
);

-- PRODUCTS
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name TEXT NOT NULL,
  category TEXT NOT NULL,   -- e.g., Basketball, Running, Training
  brand TEXT,
  unit_cost NUMERIC(10,2),
  unit_price NUMERIC(10,2),
  active_flag BOOLEAN DEFAULT TRUE
);

-- ORDERS (in-store POS only)
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  store_id INT REFERENCES stores(store_id),
  order_date TIMESTAMP NOT NULL,
  order_status TEXT NOT NULL  -- Completed/Cancelled/Returned
);

-- ORDER ITEMS
CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT REFERENCES orders(order_id),
  product_id INT REFERENCES products(product_id),
  quantity INT NOT NULL,
  unit_price NUMERIC(10,2) NOT NULL,
  discount_amount NUMERIC(10,2) DEFAULT 0
);

-- MEMBERSHIPS
CREATE TABLE memberships (
  membership_id INT PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  start_date DATE NOT NULL,
  end_date DATE,
  plan TEXT,      -- Basic/Plus/Pro
  status TEXT     -- Active/Cancelled
);

-- EVENTS (local to Staten Island)
CREATE TABLE events (
  event_id INT PRIMARY KEY,
  event_name TEXT NOT NULL,
  event_type TEXT NOT NULL,  -- Tournament/Clinic
  event_date DATE NOT NULL,
  borough TEXT NOT NULL DEFAULT 'Staten Island',
  sponsor_brand TEXT
);

-- EVENT REGISTRATIONS
CREATE TABLE event_registrations (
  registration_id INT PRIMARY KEY,
  event_id INT REFERENCES events(event_id),
  customer_id INT REFERENCES customers(customer_id),
  registration_date DATE NOT NULL,
  fee NUMERIC(10,2) NOT NULL
);

-- INVENTORY SNAPSHOTS
CREATE TABLE inventory_snapshots (
  snapshot_date DATE NOT NULL,
  store_id INT REFERENCES stores(store_id),
  product_id INT REFERENCES products(product_id),
  on_hand_qty INT NOT NULL,
  PRIMARY KEY (snapshot_date, store_id, product_id)
);
