CREATE TABLE IF NOT EXISTS products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price_cents INT NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    status VARCHAR(255) NOT NULL,
    amount_cents INT NOT NULL
);

CREATE TABLE IF NOT EXISTS order_items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);


-- Example products

INSERT INTO products (id, name, price_cents) VALUES (1, 'Apple', 100), (2, 'Banana', 50), (3, 'Cherry', 200) ON DUPLICATE KEY UPDATE id=id;
