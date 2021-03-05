----Will list all london and paris customer details (1.1)
--SELECT CustomerID, 
--CompanyName,
--Address,City,PostalCode,Country 
--FROM Customers
--WHERE City = 'London' OR City = 'Paris';


---- Listing all products stored in bottles (1.2)
--SELECT *
--FROM Products
--WHERE QuantityPerUnit LIKE '%bottles';


---- Listing bottled products and its suppliers (1.3)
--SELECT ProductID, ProductName, s.CompanyName AS 'Supplier Name',s.Country
--FROM Products p
--INNER JOIN Suppliers s
--ON s.SupplierID =p.SupplierID
--WHERE QuantityPerUnit LIKE '%bottles';

----Lists how many products are there in each category (1.4)
--SELECT CategoryName, COUNT(p.CategoryID) AS 'Total Products'
--FROM Categories c
--INNER JOIN Products p ON c.CategoryID = p.CategoryID
--GROUP BY CategoryName,p.CategoryID
--ORDER BY [Total Products]DESC; 


----Lists fullname and title of all UK employees(1.5)
--SELECT TitleOfCourtesy+ FirstName+' '+LastName AS 'Employee',
--City AS 'City of Residence'
--FROM Employees
--WHERE Country = 'UK';

----Lists sales totals above 1Million for all Sales Regions (1.6)
--SELECT r.RegionDescription AS 'Sales Region',
--ROUND(SUM(od.UnitPrice * od.Quantity ),0) AS 'Sales Total'
--FROM [Order Details] od
--INNER JOIN Orders o ON od.OrderID = o.OrderID
--INNER JOIN Employees e ON e.EmployeeID = o.EmployeeID
--INNER JOIN EmployeeTerritories et ON et.EmployeeID = e.EmployeeID
--INNER JOIN Territories t ON t.TerritoryID = et.TerritoryID
--INNER JOIN Region r ON r.RegionID = t.RegionID
--GROUP BY r.RegionDescription
--HAVING SUM(od.UnitPrice * od.Quantity ) > 1000000.00
--ORDER BY [Sales Total] DESC;



---- Only lists orders shipped from UK or USA (1.7)
--SELECT COUNT(*) AS 'Orders with Freight amount greater than Hundred'
--FROM Orders
--WHERE Freight > 100.00 AND (ShipCountry = 'UK' OR ShipCountry ='USA'); 



----Will list the TOP 3 orders with highest discounted amount (1.8)
--SELECT TOP 3 od.OrderID,
--ROUND(sq1.DiscountAmount,2) AS 'Discount amount'
--FROM [Order Details]od
--INNER JOIN
--(SELECT OrderID,
--SUM((UnitPrice*Quantity) - (UnitPrice*Quantity*(1- Discount))) AS DiscountAmount
--FROM [Order Details]
--GROUP BY OrderID) sq1 ON sq1.OrderID = od.OrderID
--GROUP BY od.OrderID, sq1.DiscountAmount
--ORDER BY [Discount amount] DESC;
