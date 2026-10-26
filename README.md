\# Inventory Management System – DBMS Case Study



\## Project Overview



The Inventory Management System is a database management project developed using MySQL 8.0. It is designed to organize and manage products, suppliers, customers, employees, purchase orders, sales transactions, warehouse stock, and product pricing.



This project demonstrates the practical implementation of relational database concepts using SQL.



\## Objectives



\- Maintain organized product and inventory records.

\- Manage suppliers, customers, and employees.

\- Track purchase orders and sales transactions.

\- Monitor stock availability across warehouses.

\- Identify products that require reordering.

\- Generate inventory and sales reports.

\- Maintain data integrity using database constraints.



\## Technologies Used



\- \*\*Database:\*\* MySQL 8.0

\- \*\*Language:\*\* SQL

\- \*\*Interface:\*\* MySQL Command Line Client

\- \*\*Version Control:\*\* Git and GitHub



\## Database Structure



The database consists of 13 relational tables:



1\. Category

2\. Supplier

3\. Product

4\. Warehouse

5\. Employee

6\. Customer

7\. PurchaseOrder

8\. PurchaseOrderItem

9\. Sale

10\. SaleItem

11\. Stock

12\. ProductSupplier

13\. PriceHistory



The tables are connected using primary keys and foreign keys to maintain referential integrity.



\## Database Features



\- Product and category management

\- Supplier information management

\- Customer and employee records

\- Purchase order tracking

\- Sales transaction records

\- Warehouse-wise inventory tracking

\- Reorder-level identification

\- Product price history

\- Inventory valuation

\- Monthly sales reporting



\## SQL Concepts Implemented



The project demonstrates:



\- DDL and DML commands

\- Primary keys and foreign keys

\- Composite primary keys

\- Database constraints

\- Inner joins and left joins

\- Aggregate functions (`count`, `sum`, `avg`, `min`, `max`)

\- Subqueries

\- `group by` and `having`

\- `order by` and `limit`

\- Pattern matching using `like`

\- Filtering using `where` and `between`



\## SQL Queries



A total of 20 SQL queries were implemented to demonstrate data retrieval and reporting.



These include product filtering, category-wise product counts, employee sales analysis, low-stock identification, warehouse inventory valuation, supplier details, price history, and monthly sales revenue.



\## Project Structure



```text

Inventory\_Management\_System\_CaseStudy/

├── database/

│   └── InventoryManagementSystem.sql

├── queries/

│   └── queries.sql

└── README.md

```



\## How to Run



1\. Install MySQL 8.0.

2\. Download or clone this repository.

3\. Import `database/InventoryManagementSystem.sql` into MySQL.

4\. Select the `inventorymanagementsystem` database.

5\. Execute the SQL statements in `queries/queries.sql` to view the results.



\## Project Outcome



The project successfully demonstrates the creation and management of a relational inventory database using MySQL.



It provides practical experience in database design, SQL implementation, table relationships, data integrity, and analytical reporting.



\## Project Type



Academic DBMS Case Study



\## Team



Developed as a team project by nine members.

