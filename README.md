# Inventory Management System
**DBMS Case Study | MySQL 8.0**

A relational database project developed using MySQL to manage products, suppliers, customers, employees, purchase orders, sales transactions, warehouse inventory, and product pricing.

## Project Overview

The Inventory Management System is an academic DBMS case study designed to demonstrate the practical implementation of relational database concepts.

The project organizes inventory-related information into interconnected tables, maintains data integrity using constraints, and retrieves useful business information through SQL queries.

**Project Highlights**
- 13 relational database tables
- 14 direct one-to-many relationships
- 4 logical many-to-many relationships
- 20 SQL queries for data retrieval and reporting
- MySQL-based implementation using the command-line interface

## Objectives

- Design a structured relational database for inventory management.
- Maintain product, supplier, customer, and employee records.
- Record purchase orders and sales transactions.
- Track product quantities across warehouses.
- Identify products at or below their reorder levels.
- Maintain product price history.
- Generate inventory, sales, and pricing reports.
- Ensure referential integrity using primary and foreign keys.

## Technology Stack

| Component | Technology |
|---|---|
| Database | MySQL 8.0 |
| Query Language | SQL |
| Interface | MySQL Command Line Client |
| Version Control | Git |
| Repository Hosting | GitHub |

## Database Schema

The database contains 13 tables.

| Table | Description |
|---|---|
| Category | Stores product category information |
| Supplier | Stores supplier details |
| Product | Maintains product details, prices, and reorder levels |
| Warehouse | Stores warehouse information |
| Employee | Maintains employee information and roles |
| Customer | Stores customer information |
| PurchaseOrder | Records purchase orders placed with suppliers |
| PurchaseOrderItem | Stores products included in purchase orders |
| Sale | Records sales transactions |
| SaleItem | Stores products and quantities involved in sales |
| Stock | Tracks product quantities across warehouses |
| ProductSupplier | Connects products and suppliers with supply prices and lead times |
| PriceHistory | Maintains historical and current product prices |

### Database Relationships

The database uses primary keys, foreign keys, and composite primary keys to establish relationships between tables.

Examples include:

- Category → Product
- Supplier → PurchaseOrder
- PurchaseOrder → PurchaseOrderItem
- Customer → Sale
- Sale → SaleItem
- Product ↔ Supplier (through ProductSupplier)
- Product ↔ Warehouse (through Stock)

## Key Features

### Product and Supplier Management
- Store product details and categories.
- Maintain supplier contact information.
- Retrieve product-supplier associations.
- Compare supply prices and lead times.

### Purchase and Sales Management
- Maintain purchase order records.
- Store products included in purchase orders.
- Record customer sales transactions.
- Retrieve sales details with customer and employee information.

### Inventory Management
- Track stock quantities across warehouses.
- Identify products requiring replenishment.
- Calculate warehouse-wise inventory values.

### Pricing and Reporting
- Maintain current and historical product prices.
- Calculate product profit amounts and markup percentages.
- Generate monthly sales revenue reports.
- Analyze category-wise products and employee sales.

## SQL Concepts Implemented

- Database and table creation
- Data insertion and retrieval
- Primary keys and foreign keys
- Composite primary keys
- Unique and not-null constraints
- Inner joins and left joins
- Aggregate functions: `count()`, `sum()`, `avg()`, `min()`, `max()`
- Subqueries
- `group by` and `having`
- `where`, `between`, and `like`
- `order by` and `limit`
- Date formatting and arithmetic expressions

## SQL Queries

The project includes 20 SQL queries covering:

1. Products above a specified selling price
2. Products within a price range
3. Product search using pattern matching
4. Three most expensive products
5. Product profit and markup calculation
6. Products with their categories
7. Purchase orders with supplier details
8. Sales with customer and employee information
9. Customers and their sales
10. Product count and price statistics
11. Category-wise product count
12. Employees who handled multiple sales
13. Products priced above average
14. Suppliers associated with purchase orders
15. Products at or below reorder levels
16. Warehouse-wise inventory valuation
17. Product-supplier pricing and lead times
18. Current product selling prices
19. Monthly sales revenue
20. Detailed sales transaction report

## Project Structure

```text
Inventory_Management_System_CaseStudy/
├── database/
│   └── InventoryManagementSystem.sql
├── queries/
│   └── queries.sql
└── README.md
```

## How to Run

### Prerequisites

- MySQL Server 8.0 or later
- MySQL Command Line Client

### 1. Clone the Repository

```bash
git clone https://github.com/pvsatvika/Inventory_Management_System_CaseStudy.git
cd Inventory_Management_System_CaseStudy
```

### 2. Import the Database

Run the following command in a terminal:

```bash
mysql -u root -p < database/InventoryManagementSystem.sql
```

Enter your MySQL password when prompted.

### 3. Select the Database

Open MySQL Command Line Client and execute:

```sql
use inventorymanagementsystem;
```

### 4. Verify the Tables

```sql
show tables;
```

### 5. Execute SQL Queries

Run the queries from `queries/queries.sql` individually, or execute the file using:

```sql
source queries/queries.sql;
```

## Project Outcomes

- Designed and implemented 13 interconnected relational tables.
- Established relationships using primary keys and foreign keys.
- Inserted sample records to demonstrate database operations.
- Executed 20 SQL queries for data retrieval and analysis.
- Demonstrated inventory monitoring, purchase and sales reporting, and warehouse valuation.
- Applied relational database concepts to a practical inventory management scenario.

## Project Scope

This project focuses on **MySQL database design and SQL implementation**. It does not include a frontend application or automated stock updates.

## Conclusion

The Inventory Management System demonstrates how relational databases can organize inventory information, maintain data consistency, and support reporting through SQL queries.

The project provides practical experience in relational database design, table relationships, constraints, joins, subqueries, aggregate functions, and data analysis.

---

**Project Type:** Academic DBMS Case Study  
**Team Size:** 9 Members  
**Technology:** MySQL 8.0
