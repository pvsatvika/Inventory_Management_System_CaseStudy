

\# Inventory Management System

\### DBMS Case Study | MySQL 8.0



A relational database project designed to manage inventory operations, including products, suppliers, purchase orders, sales, warehouses, stock levels, and pricing information.



This project was developed as part of our Database Management Systems (DBMS) coursework to demonstrate practical implementation of database design, relational modeling, and SQL queries.



\---



\## Project Overview



Managing inventory efficiently is essential for shops, warehouses, and businesses. Manual record maintenance can result in data duplication, inaccurate stock information, and difficulty in retrieving records.



The Inventory Management System addresses these challenges by organizing inventory-related information into a structured relational database using MySQL.



The project focuses on database design, table creation, relationships, constraints, data insertion, and SQL-based reporting.



\## Project Objectives



\- Design a structured relational database for inventory management.

\- Maintain product, category, supplier, customer, and employee information.

\- Record purchase orders and sales transactions.

\- Track product quantities across multiple warehouses.

\- Identify products that have reached their reorder levels.

\- Maintain product price history and supplier information.

\- Generate meaningful inventory and sales reports.

\- Ensure data consistency using primary keys, foreign keys, and constraints.



\## Technology Stack



| Component | Technology |

|-----------|------------|

| Database | MySQL 8.0 |

| Query Language | SQL |

| Development Interface | MySQL Command Line Client |

| Version Control | Git |

| Repository Hosting | GitHub |



\## Database Design



The database consists of \*\*13 relational tables\*\*, organized into the following categories.



\### Product and Supplier Management

\- \*\*Category\*\* – Stores product category details.

\- \*\*Product\*\* – Maintains product information, prices, and reorder levels.

\- \*\*Supplier\*\* – Stores supplier contact information.

\- \*\*ProductSupplier\*\* – Establishes product-supplier relationships, including supply prices and lead times.



\### Purchase and Sales Management

\- \*\*PurchaseOrder\*\* – Records purchase orders placed with suppliers.

\- \*\*PurchaseOrderItem\*\* – Stores individual products included in purchase orders.

\- \*\*Sale\*\* – Records customer sales transactions.

\- \*\*SaleItem\*\* – Stores products, quantities, and prices for each sale.



\### Inventory and Warehouse Management

\- \*\*Warehouse\*\* – Maintains warehouse information.

\- \*\*Stock\*\* – Tracks product quantities in different warehouses.



\### Other Supporting Tables

\- \*\*Customer\*\* – Stores customer information.

\- \*\*Employee\*\* – Maintains employee information and roles.

\- \*\*PriceHistory\*\* – Tracks historical and current product prices.



\### Database Relationships



The database uses:



\- Primary keys to uniquely identify records.

\- Foreign keys to establish relationships between tables.

\- Composite primary keys in junction tables.

\- One-to-many and many-to-many relationships.

\- Constraints to maintain referential integrity.



\## Key Features



\### Inventory Management

\- Store and retrieve product details.

\- Track stock quantities by warehouse.

\- Identify low-stock products using reorder levels.

\- Calculate warehouse-wise inventory value.



\### Purchase Management

\- Maintain supplier details.

\- Record purchase orders and their items.

\- Retrieve expected delivery dates and purchase costs.



\### Sales Management

\- Maintain customer and employee records.

\- Record sales transactions and their items.

\- Generate detailed sales reports.

\- Calculate monthly sales revenue.



\### Pricing and Reporting

\- Calculate product profit amounts and markup percentages.

\- Retrieve current product prices.

\- Maintain historical pricing records.

\- Analyze product prices, suppliers, and sales.



\## SQL Concepts Demonstrated



The project demonstrates the following SQL concepts:



\- DDL commands: `create`, `alter`, `drop`

\- DML commands: `insert`, `update`, `delete`

\- Data retrieval using `select`

\- Primary keys and foreign keys

\- Composite primary keys

\- `inner join` and `left join`

\- Aggregate functions: `count`, `sum`, `avg`, `min`, `max`

\- `group by` and `having`

\- Subqueries

\- `where`, `between`, and `like`

\- `order by` and `limit`

\- Date formatting and calculations



\## SQL Queries and Reports



The project includes \*\*20 SQL queries\*\* covering:



1\. Products above a specified selling price

2\. Products within a price range

3\. Product search using pattern matching

4\. Three most expensive products

5\. Product profit and markup calculations

6\. Products with their categories

7\. Purchase orders with supplier details

8\. Sales with customer and employee details

9\. Customers and their sales

10\. Product count and price statistics

11\. Category-wise product counts

12\. Employees handling multiple sales

13\. Products priced above average

14\. Suppliers associated with purchase orders

15\. Products at or below reorder levels

16\. Warehouse-wise inventory valuation

17\. Product-supplier pricing and lead times

18\. Current product selling prices

19\. Monthly sales revenue

20\. Detailed sales transaction reports



The SQL statements are available in the `queries/queries.sql` file.



\## Project Structure



```text

Inventory\_Management\_System\_CaseStudy/

|

|-- database/

|   |-- InventoryManagementSystem.sql

|

|-- queries/

|   |-- queries.sql

|

|-- README.md

```



\## Getting Started



\### Prerequisites



\- MySQL Server 8.0 or later

\- MySQL Command Line Client



\### 1. Clone the Repository



```bash

git clone https://github.com/pvsatvika/Inventory\_Management\_System\_CaseStudy.git

```



\### 2. Import the Database



Open a terminal in the repository folder and execute:



```bash

mysql -u root -p < database/InventoryManagementSystem.sql

```



Enter your MySQL password when prompted.



\### 3. Select the Database



Open MySQL Command Line Client:



```sql

use inventorymanagementsystem;

```



\### 4. Verify the Tables



```sql

show tables;

```



\### 5. Execute the SQL Queries



From the repository folder, you can execute the queries using:



```bash

mysql -u root -p inventorymanagementsystem < queries/queries.sql

```



Alternatively, open `queries/queries.sql` and execute individual statements in MySQL.



\## Project Results



The project demonstrates:



\- Creation of 13 interconnected relational tables.

\- Implementation of database constraints and relationships.

\- Insertion and retrieval of sample inventory records.

\- Execution of 20 SQL queries.

\- Inventory tracking and reorder-level analysis.

\- Sales, supplier, pricing, and warehouse reporting.



\## Scope and Limitations



This is a \*\*MySQL-based academic database implementation\*\*.



The project demonstrates database design and SQL operations. It does not include a frontend application, automated inventory updates, or a production deployment.



\## Conclusion



The Inventory Management System demonstrates how relational database concepts can be applied to organize and retrieve inventory information efficiently.



Through this project, we gained practical experience in database design, SQL programming, relational integrity, joins, subqueries, aggregate functions, and reporting.



\---



\*\*Project Type:\*\* Academic DBMS Case Study



\*\*Team Size:\*\* 9 Members



\*\*Technology:\*\* MySQL 8.0



