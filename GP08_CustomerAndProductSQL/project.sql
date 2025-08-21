/*
Database Sctructure: Scale Model Cars Database

Table Name: customers
Primary Key: customerNumber
Foreign Keys: salesRepEmployeeNumber (employees.employeeNumber)
Info: Customer data

Table Name: employees
Primary Key: employeeNumber
Foreign Keys: officeCode (offices.officeCode), reportsTo (employees.employeeNumber)
Info: All employee information

Table Name: offices
Primary Key: officeCode
Foreign Keys: None
Info: Sales Office information

TableName: orders
Primary Key: orderNumber
Foreign Keys: customerNumber (customers.customerNumber)
Info: Customers' Sales Orders

TableName: orderdetails
Primary Key: orderNumber, productCode
Foreign Keys: orderNumber (orders.orderNumber), productCode (products.productCode)
Info: Sales Order Line for each Sales Order

TableName: payments
Primary Key: customerNumber, checkNumber
Foreign Keys: customerName (customers.customerNumber)
Info: Customers' Payment Records

TableName: products
Primary Key: productCode
Foreign Keys: productLine (productlines.productLine)
Info: List of Scale Model Cars

TableName: productlines
Primary Key: productLine
Foreign Keys: None
Info: A List of Product Line Categories

*/

SELECT 'Customers' AS table_name,
				 (SELECT COUNT(*) FROM pragma_table_info('customers')) AS number_of_attributes,
				 (SELECT COUNT(*) FROM customers) AS number_of_rows
UNION ALL
SELECT 'Products' AS table_name,
				 (SELECT COUNT(*) FROM pragma_table_info('products')) AS number_of_attributes,
				 (SELECT COUNT(*) FROM products) AS number_of_rows
UNION ALL
SELECT 'ProductLines' AS table_name,
				 (SELECT COUNT(*) FROM pragma_table_info('productlines')) AS number_of_attributes,
				 (SELECT COUNT(*) FROM productlines) AS number_of_rows
UNION ALL
SELECT 'Orders' AS table_name,
				 (SELECT COUNT(*) FROM pragma_table_info('orders')) AS number_of_attributes,
				 (SELECT COUNT(*) FROM orders) AS number_of_rows
UNION ALL
SELECT 'OrderDetails' AS table_name,
				 (SELECT COUNT(*) FROM pragma_table_info('orderdetails')) AS number_of_attributes,
				 (SELECT COUNT(*) FROM orderdetails) AS number_of_rows
UNION ALL
SELECT 'Payments' AS table_name,
				 (SELECT COUNT(*) FROM pragma_table_info('payments')) AS number_of_attributes,
				 (SELECT COUNT(*) FROM payments) AS number_of_rows
UNION ALL
SELECT 'Employees' AS table_name,
				 (SELECT COUNT(*) FROM pragma_table_info('employees')) AS number_of_attributes,
				 (SELECT COUNT(*) FROM employees) AS number_of_rows
UNION ALL
SELECT 'Offices' AS table_name,
				 (SELECT COUNT(*) FROM pragma_table_info('offices')) AS number_of_attributes,
				 (SELECT COUNT(*) FROM offices) AS number_of_rows
;

-- Question 1: Which Products Should We Order More of or Less of?

WITH lowstock AS
(SELECT p.productCode,
		ROUND(SUM(od.quantityOrdered) * 1.0 / p.quantityInStock, 2) AS lowStock
FROM products p
JOIN orderdetails od
ON p.productCode = od.productCode
GROUP BY p.productCode
ORDER BY lowStock DESC
LIMIT 10),
-- (SELECT p.productCode,
-- 				 ROUND((SELECT SUM(quantityOrdered)
-- 				  FROM orderdetails
-- 				  WHERE productCode = p.productCode
-- 				  GROUP BY productCode) / quantityInStock * 1.0, 2) AS lowStock
-- 	 FROM products p
-- ORDER BY lowStock
-- LIMIT 10),
productperformance AS
(SELECT od.productCode, SUM(od.quantityOrdered * od.priceEach) as productPerformance
FROM orderdetails od
JOIN lowstock s ON od.productCode = s.productCode
GROUP BY od.productCode
ORDER BY productPerformance DESC
LIMIT 10)

SELECT products.productCode, products.productName, products.productLine
FROM productperformance
JOIN products ON productperformance.productCode = products.productCode;
--WHERE productperformance.productCode IN (SELECT productCode FROM lowstock);

-- Question 2: How Should We Match Marketing and Communication Strategies to Customer Behaviour?

WITH vip_customers AS
(SELECT o.customerNumber, SUM(d.quantityOrdered * (d.priceEach - p.buyPrice)) AS profit
FROM orders o
INNER JOIN orderdetails d
ON o.orderNumber = d.orderNumber
INNER JOIN products p
ON d.productCode = p.productCode
GROUP BY o.customerNumber)

SELECT c.contactLastName, c.contactFirstName, c.city, c.country, v.profit
FROM customers c
INNER JOIN (SELECT * FROM vip_customers ORDER BY profit DESC LIMIT 5) v
ON c.customerNumber = v.customerNumber;

WITH vip_customers AS
(SELECT o.customerNumber, SUM(d.quantityOrdered * (d.priceEach - p.buyPrice)) AS profit
FROM orders o
INNER JOIN orderdetails d
ON o.orderNumber = d.orderNumber
INNER JOIN products p
ON d.productCode = p.productCode
GROUP BY o.customerNumber)

SELECT c.contactLastName, c.contactFirstName, c.city, c.country, v.profit
FROM customers c
INNER JOIN (SELECT * FROM vip_customers ORDER BY profit LIMIT 5) v
ON c.customerNumber = v.customerNumber;

-- Question 3: How Much Can We Spend on Acquiring New Customers?

WITH vip_customers AS
(SELECT o.customerNumber, SUM(d.quantityOrdered * (d.priceEach - p.buyPrice)) AS profit
FROM orders o
INNER JOIN orderdetails d
ON o.orderNumber = d.orderNumber
INNER JOIN products p
ON d.productCode = p.productCode
GROUP BY o.customerNumber)

SELECT AVG(profit)
FROM vip_customers;