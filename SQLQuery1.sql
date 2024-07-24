--Write a query to find the total sales amount for each customer, showing only those customers with total sales greater than $1000.
null
--Write a query to find the average order quantity for each product, showing only those products with an average order quantity greater than 10.
select ProductID, AVG(Quantity) [average order quantity] from [Order Details] 
group by ProductID
--Write a query to find the total sales amount for each employee, showing only those employees with total sales greater than $5000.
null
--Write a query to find the average discount given on each product, showing only those products with an average discount greater than 5%.
select ProductID, AVG(Discount) [average discount] from [Order Details] 
group by ProductID 
having AVG(Discount) > 0.05
--Write a query to count the number of orders handled by each employee, showing only those employees who have handled more than 50 orders.
select EmployeeID, COUNT(OrderID) [number of orders] from Orders
group by EmployeeID
having COUNT(OrderID) > 50
--Write a query to find the total sales amount for each month of each year, showing only those months with total sales greater than $10000.
select MONTH(ShippedDate) [month, year], SUM(SaleAmount) [total sale amount] from [Sales Totals by Amount]
group by MONTH(ShippedDate)
having SUM(SaleAmount) > 10000
--Write a query to find the average order value for each year, showing only those years with an average order value greater than $500.
null
--Write a query to find the total quantity of products sold each year, showing only those years with total quantity sold greater than 1000 units.
null
--Write a query to find the total freight charges for each country, showing only those countries with total freight charges greater than $1000.
select ShipCountry, SUM(Freight) [total freight charges] from Orders
group by ShipCountry 
having SUM(Freight) > 1000
--Write a query to find the average freight charges for each country, showing only those countries with an average freight charge greater than $50.
select ShipCountry, AVG(Freight) [average freight charge] from Orders
group by ShipCountry
having AVG(Freight) > 50
--Write a query to find the total sales amount for each product category for each year, showing only those categories with total sales greater than $10000 in any year.
null