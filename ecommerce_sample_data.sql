
-- Insert sample data into customers table
INSERT INTO customers (first_name, last_name, email, phone, address, city, country)
VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Elm Street', 'Springfield', 'USA'),
('Jane', 'Smith', 'jane.smith@example.com', '9876543210', '456 Oak Avenue', 'Lincoln', 'USA'),
('Alice', 'Brown', 'alice.brown@example.com', '5556667777', '789 Maple Lane', 'Centerville', 'USA');

-- Insert sample data into categories table
INSERT INTO categories (name)
VALUES
('Electronics'),
('Books'),
('Clothing');

-- Insert sample data into products table
INSERT INTO products (name, description, price, stock_quantity, category_id)
VALUES
('Smartphone', 'Latest model with 128GB storage', 699.99, 50, 1),
('Laptop', '15-inch screen with 16GB RAM', 999.99, 30, 1),
('Fiction Book', 'A thrilling mystery novel', 19.99, 100, 2),
('T-Shirt', 'Cotton T-Shirt in various sizes', 9.99, 200, 3);

-- Insert sample data into orders table
INSERT INTO orders (customer_id, total_amount)
VALUES
(1, 719.98),
(2, 19.99),
(3, 29.97);

-- Insert sample data into order_items table
INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 699.99),
(1, 4, 2, 9.99),
(2, 3, 1, 19.99),
(3, 4, 3, 9.99);

-- Insert sample data into reviews table
INSERT INTO reviews (product_id, customer_id, rating, comment)
VALUES
(1, 1, 5, 'Excellent smartphone, highly recommend!'),
(3, 2, 4, 'Great book, very engaging.'),
(4, 3, 3, 'Comfortable, but the color faded after washing.');
