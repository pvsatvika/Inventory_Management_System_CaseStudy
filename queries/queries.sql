use inventorymanagementsystem;

-- Query 1: Products with selling price above 1000
select ProductName, SellingPrice, CategoryID from Product where SellingPrice > 1000;

-- Query 2: Products within a price range
select ProductID, ProductName, SellingPrice from Product where SellingPrice between 500 and 20000 order by SellingPrice asc;

-- Query 3: Products containing the letter 'o'
select ProductID, ProductName, SKU from Product where ProductName like '%o%';

-- Query 4: Three most expensive products
select ProductName, SellingPrice from Product order by SellingPrice desc limit 3;

-- Query 5: Profit amount and percentage
select ProductName, CostPrice, SellingPrice, (SellingPrice - CostPrice) as ProfitAmount, round((SellingPrice - CostPrice) / CostPrice * 100, 2) as ProfitPercentage from Product;

-- Query 6: Products with their categories
select p.ProductName, c.CategoryName, p.SellingPrice from Product p inner join Category c on p.CategoryID = c.CategoryID order by c.CategoryName;

-- Query 7: Purchase orders with supplier details
select po.POID, s.SupplierName, po.OrderDate, po.Status, po.TotalAmount from PurchaseOrder po inner join Supplier s on po.SupplierID = s.SupplierID;

-- Query 8: Sales with customer and employee details
select sa.SaleID, c.Name as CustomerName, e.Name as EmployeeName, sa.SaleDate, sa.TotalAmount from Sale sa inner join Customer c on sa.CustomerID = c.CustomerID inner join Employee e on sa.EmployeeID = e.EmployeeID;

-- Query 9: All customers and their sales
select c.CustomerID, c.Name as CustomerName, sa.SaleID, sa.TotalAmount from Customer c left join Sale sa on c.CustomerID = sa.CustomerID order by c.CustomerID;

-- Query 10: Product count and price statistics
select count(*) as TotalProducts, round(avg(SellingPrice), 2) as AveragePrice, min(SellingPrice) as MinimumPrice, max(SellingPrice) as MaximumPrice from Product;

-- Query 11: Number of products in each category
select c.CategoryName, count(p.ProductID) as ProductCount from Category c left join Product p on c.CategoryID = p.CategoryID group by c.CategoryID, c.CategoryName order by ProductCount desc;

-- Query 12: Employees who handled more than one sale
select e.Name as EmployeeName, count(sa.SaleID) as TotalSales, sum(sa.TotalAmount) as TotalSalesAmount from Employee e inner join Sale sa on e.EmployeeID = sa.EmployeeID group by e.EmployeeID, e.Name having count(sa.SaleID) > 1;

-- Query 13: Products priced above average
select ProductName, SellingPrice from Product where SellingPrice > (select avg(SellingPrice) from Product);

-- Query 14: Suppliers who received purchase orders
select SupplierName, Email from Supplier where SupplierID in (select distinct SupplierID from PurchaseOrder);

-- Query 15: Products at or below reorder level
select p.ProductName, p.ReorderLevel, sum(s.QuantityOnHand) as AvailableStock from Product p inner join Stock s on p.ProductID = s.ProductID group by p.ProductID, p.ProductName, p.ReorderLevel having sum(s.QuantityOnHand) <= p.ReorderLevel;

-- Query 16: Inventory value by warehouse
select w.WarehouseName, sum(s.QuantityOnHand * p.CostPrice) as TotalInventoryValue from Warehouse w inner join Stock s on w.WarehouseID = s.WarehouseID inner join Product p on s.ProductID = p.ProductID group by w.WarehouseID, w.WarehouseName order by TotalInventoryValue desc;

-- Query 17: Product supplier details
select p.ProductName, s.SupplierName, ps.SupplyPrice, ps.LeadTimeDays from ProductSupplier ps inner join Product p on ps.ProductID = p.ProductID inner join Supplier s on ps.SupplierID = s.SupplierID order by p.ProductName;

-- Query 18: Current product prices
select p.ProductName, ph.Price as CurrentPrice, ph.EffectiveFrom from Product p inner join PriceHistory ph on p.ProductID = ph.ProductID where ph.EffectiveTo is null order by p.ProductName;

-- Query 19: Monthly sales revenue
select date_format(SaleDate, '%Y-%m') as SalesMonth, count(SaleID) as NumberOfSales, sum(TotalAmount) as MonthlyRevenue from Sale group by date_format(SaleDate, '%Y-%m') order by SalesMonth;

-- Query 20: Detailed sales report
select sa.SaleID, c.Name as CustomerName, p.ProductName, si.Quantity, si.UnitPrice, (si.Quantity * si.UnitPrice) as ItemTotal, sa.PaymentMethod from Sale sa inner join Customer c on sa.CustomerID = c.CustomerID inner join SaleItem si on sa.SaleID = si.SaleID inner join Product p on si.ProductID = p.ProductID order by sa.SaleID;