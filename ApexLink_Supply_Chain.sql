-- Q1)  Display all records.  

SELECT * 
FROM apexlink_supply_chain_dataset;


-- Q2 Display only Supplier and Product columns. 

SELECT Supplier, Product
FROM apexlink_supply_chain_dataset;


-- Q3 Display the first 20 records.

SELECT *
FROM apexlink_supply_chain_dataset
LIMIT 20;


-- Q4 Show all distinct suppliers.  

SELECT distinct supplier
FROM apexlink_supply_chain_dataset;

-- Q5 Show all distinct warehouses.

SELECT distinct warehouse
FROM apexlink_supply_chain_dataset;

-- 6. Find orders with Quantity greater than 50.

SELECT *
FROM apexlink_supply_chain_dataset
WHERE Quantity > 50;


-- 7. Find products with Unit Price between 5,000 and 20,000.

SELECT product, Unit_Price 
FROM apexlink_supply_chain_dataset
WHERE Unit_Price between 5000 AND 20000;


-- 8. Find all Delivered orders.


SELECT *
FROM apexlink_supply_chain_dataset
WHERE Order_Status = 'delivered';



-- 9. Find all Pending orders. 


SELECT *
FROM apexlink_supply_chain_dataset
WHERE Order_Status = 'pending';


-- 10. Find all Cancelled orders.


SELECT *
FROM apexlink_supply_chain_dataset
WHERE Order_Status = 'cancelled';



-- 11. Find all orders from Lagos warehouse.  

SELECT *
FROM apexlink_supply_chain_dataset
WHERE Warehouse = 'lagos';



-- 12. Find suppliers whose names begin with "D".


SELECT distinct supplier
FROM apexlink_supply_chain_dataset
WHERE Supplier LIKE 'd%';



-- 13. Find suppliers containing "Nest". 


SELECT distinct supplier
FROM apexlink_supply_chain_dataset
WHERE Supplier LIKE '%nest%';

-- 14. Find products ending with "Rice". 


SELECT distinct product
FROM apexlink_supply_chain_dataset
WHERE product LIKE '%rice';

-- 15. Find orders where Delivery Days is greater than 7.  


SELECT *
FROM apexlink_supply_chain_dataset
WHERE Delivery_Days > 7;



-- 16. Total Sales.  


SELECT SUM(quantity * unit_price)
FROM apexlink_supply_chain_dataset;


-- 17. Average Unit Price.  


SELECT AVG(unit_price)
FROM apexlink_supply_chain_dataset;


-- 19. Maximum Unit Price.

SELECT MAX(unit_price)
FROM apexlink_supply_chain_dataset;


-- 20. Minimum Unit Price. 


SELECT MIN(unit_price)
FROM apexlink_supply_chain_dataset;



-- 21. Total Quantity Sold.  


SELECT SUM(Quantity)
FROM apexlink_supply_chain_dataset;



-- 22. Total Sales by Supplier. 


SELECT supplier, SUM(quantity*unit_price) AS Total_Sales
FROM apexlink_supply_chain_dataset
GROUP BY supplier;


-- 23. Total Sales by Warehouse.  

SELECT warehouse, SUM(quantity*unit_price) AS Total_Sales
FROM apexlink_supply_chain_dataset
GROUP BY warehouse;



-- 24. Total Sales by Customer Region.

SELECT Customer_Region, SUM(quantity*unit_price) AS Total_Sales
FROM apexlink_supply_chain_dataset
GROUP BY Customer_Region;




-- 25. Number of Orders by Supplier. 


SELECT supplier, COUNT('Order ID') AS Total_Orders
FROM apexlink_supply_chain_dataset
GROUP BY supplier;



-- 26. Number of Orders by Warehouse.


SELECT Warehouse, COUNT('Order ID') AS Total_Orders
FROM apexlink_supply_chain_dataset
GROUP BY warehouse;



-- 27. Number of Orders by Status.

SELECT Order_Status, COUNT('Order ID') AS Total_Orders
FROM apexlink_supply_chain_dataset
GROUP BY Order_Status;
 
 
 
 -- 28. Suppliers with more than 20 orders.
 
SELECT supplier, COUNT('Order ID') AS Total_Orders
FROM apexlink_supply_chain_dataset
GROUP BY supplier
HAVING COUNT('Order ID') > 20 ;



-- 29. Warehouses with average delivery days greater than 5.  


SELECT warehouse, AVG(delivery_days) AS AVG_delivery_days
FROM apexlink_supply_chain_dataset
GROUP BY Warehouse
HAVING AVG(delivery_days) > 5;


-- 30. Products with total quantity sold greater than 100.


SELECT product, SUM(quantity) AS Total_quantity
FROM apexlink_supply_chain_dataset
GROUP BY product
HAVING SUM(quantity)>100;



/* 31. Create a column named Delivery Performance:  
≤ 3 days → Fast  
4–7 days → Normal  
7 days → Late  */


SELECT *,
CASE 
WHEN delivery_days <= 3 THEN 'Fast'
WHEN delivery_days BETWEEN 4 AND 7 THEN 'Normal'
ELSE 'Late'
END AS Delivery_Performance
FROM apexlink_supply_chain_dataset;



-- 32. Create a view for Delivered Orders. 


CREATE VIEW Delivered_Orders AS
SELECT *
FROM apexlink_supply_chain_dataset
WHERE order_status = 'delivered';

SELECT *
FROM delivered_orders;




-- 33. Create a view for Late Deliveries. 


CREATE VIEW Late_deliveries AS
SELECT *
FROM apexlink_supply_chain_dataset
WHERE Delivery_Days > 7;


SELECT *
FROM late_deliveries;



-- 34. Create a view showing Total Sales by Supplier. 


CREATE VIEW Total_sales_by_supplier AS
SELECT Supplier, SUM(Quantity * Unit_Price) 
FROM apexlink_supply_chain_dataset
GROUP BY Supplier;

SELECT * 
FROM total_sales_by_supplier;
