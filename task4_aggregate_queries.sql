USE ecommerce_db;
-- Total number of customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Average price of all products
SELECT AVG(Price) AS average_product_price FROM products;

-- Total revenue from all payments
SELECT SUM(Amount) AS total_revenue FROM payments;

-- Number of orders placed by each customer
SELECT CustomerID, COUNT(*) AS total_orders
FROM orders
GROUP BY CustomerID;

-- Total quantity ordered for each product
SELECT ProductID, SUM(Quantity) AS total_quantity_ordered
FROM orderitems
GROUP BY ProductID;

-- Average order amount by customer
SELECT CustomerID, AVG(TotalAmount) AS average_order_value
FROM orders
GROUP BY CustomerID;

-- Products with total quantity ordered > 5
SELECT ProductID, SUM(Quantity) AS total_qty
FROM orderitems
GROUP BY ProductID
HAVING total_qty > 5;

-- Revenue collected per payment method
SELECT PaymentMethod, SUM(Amount) AS total_amount
FROM payments
GROUP BY PaymentMethod;

-- Customers who placed more than 2 orders
SELECT CustomerID, COUNT(*) AS order_count
FROM orders
GROUP BY CustomerID
HAVING order_count > 2;
