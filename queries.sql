-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.ProductName, Category.CategoryName
FROM Product
JOIN Category
ON Product.CategoryID = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
-- changed table name to orders because order is a reserved SQL keyword
SELECT Orders.Id, Shipper.CompanyName
FROM Orders
JOIN Shipper
ON Orders.ShipVia = Shipper.Id
WHERE Orders.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Product.ProductName, OrderDetail.Quantity 
FROM OrderDetail 
JOIN Product
ON Product.ProductID = OrderDetail.ProductID
WHERE OrderDetail.OrderID = '10251';

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Orders.Id, Customer.ContactName, Employee.LastName
FROM Orders
JOIN Employee ON Orders.EmployeeID = Employee.Id
JOIN Customer ON Orders.CustomerID = Customer.Id;
