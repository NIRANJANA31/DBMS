CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    availability VARCHAR(20)
);

INSERT INTO Customer VALUES
(1, 'Niranjana', 'niranjana@gmail.com', 'Tindivanam'),
(2, 'Arun', 'arun@gmail.com', 'Chennai'),
(3, 'Priya', 'priya@gmail.com', 'Pondicherry'),
(4, 'Karthik', 'karthik@gmail.com', 'Villupuram');

INSERT INTO Product VALUES
(101, 'Laptop', 'Electronics', 55000, 'Available'),
(102, 'Mouse', 'Electronics', 800, 'Available'),
(103, 'Keyboard', 'Electronics', 1500, 'Available'),
(104, 'T-Shirt', 'Fashion', 700, 'Available'),
(105, 'Jeans', 'Fashion', 1800, 'Out of Stock'),
(106, 'Headphones', 'Electronics', 2500, 'Available'),
(107, 'Shoes', 'Footwear', 2200, 'Available');

SELECT * FROM Product;

SELECT product_name, price
FROM Product;

SELECT * FROM Product
WHERE price > 2000;

SELECT * FROM Product
WHERE category = 'Electronics';

SELECT * FROM Product
WHERE availability = 'Available';

-- 3. ORDER BY
SELECT * FROM Product
ORDER BY price ASC;

SELECT * FROM Product
ORDER BY price DESC;

-- 4. DISTINCT
SELECT DISTINCT category
FROM Product;

-- 5. Search Products by Price
SELECT * FROM Product
WHERE price BETWEEN 1000 AND 3000;

SELECT * FROM Product
WHERE price < 2000;

-- 6. Search Products by Category
SELECT * FROM Product
WHERE category = 'Fashion';

SELECT * FROM Product
WHERE category IN ('Electronics', 'Fashion');

-- 7. Search Products by Availability
SELECT * FROM Product
WHERE availability = 'Available';

SELECT * FROM Product
WHERE availability = 'Out of Stock';

-- 8. Retrieve Customer Information
SELECT * FROM Customer;

SELECT customer_name, email
FROM Customer;

SELECT * FROM Customer
WHERE city = 'Chennai';

-- 9. Filtering Conditions
SELECT * FROM Product
WHERE category = 'Electronics'
AND price > 1000;

SELECT * FROM Product
WHERE availability = 'Available'
AND price < 3000;

SELECT * FROM Product
WHERE category = 'Fashion'
OR category = 'Footwear';

-- 10. Basic Business Reports
SELECT COUNT(*) AS total_products
FROM Product;

SELECT AVG(price) AS average_price
FROM Product;

SELECT MAX(price) AS highest_price
FROM Product;

SELECT MIN(price) AS lowest_price
FROM Product;

SELECT category, COUNT(*) AS product_count
FROM Product
GROUP BY category;

SELECT category, AVG(price) AS average_price
FROM Product
GROUP BY category;

SELECT category, COUNT(*) AS available_products
FROM Product
WHERE availability = 'Available'
GROUP BY category;