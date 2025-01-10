
-- Query 1: Find the top 3 customers by total spending
SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 3;

-- Query 2: Calculate the monthly revenue
SELECT DATE_TRUNC('month', order_date) AS month, SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- Query 3: Find the most popular product by total quantity sold
SELECT p.product_id, p.name, SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.name
ORDER BY total_quantity_sold DESC
LIMIT 1;

-- Query 4: Get the average rating for each product
SELECT p.product_id, p.name, AVG(r.rating) AS average_rating
FROM products p
LEFT JOIN reviews r ON p.product_id = r.product_id
GROUP BY p.product_id, p.name
ORDER BY average_rating DESC;

-- Query 5: Get all orders with their corresponding order items and total amounts
SELECT o.order_id, o.order_date, c.first_name, c.last_name, p.name AS product_name, oi.quantity, oi.price,
       (oi.quantity * oi.price) AS item_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_id, oi.order_item_id;
