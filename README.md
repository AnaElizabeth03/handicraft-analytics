# 🧶 Handicraft Analytics: End-to-End Data Management System

## 📌 Project Overview
**Handicraft Analytics** is a data analytics solution designed for a real-world artisanal micro-enterprise specializing in handcrafted crochet products. 

The goal of this system is to transition from informal manual tracking to a structured relational database model in SQL Server, enabling the tracking of inventory distributed across partner retail locations, calculation of precise material costs (Bill of Materials), and transactional sales logging.

---

## 🏗️ Architecture & Tech Stack
- **Database Engine:** SQL Server (T-SQL)
- **Data Modeling:** Relational Model (3NF)
- **Data Analytics & Visualization:** Excel / Power BI

---

## 🗄️ Relational Database Schema (`crochet_db`)
The database architecture comprises 5 core tables connected via foreign keys:

1. **`materiales`**: Catalog of raw materials (yarns, safety eyes, filling, keychains) with purchase costs.
2. **`productos`**: Product catalog detailing production time and final sales price.
3. **`recetas`**: Bridge table (Bill of Materials) mapping exact material proportions required per product.
4. **`inventario_tienda`**: Physical stock tracking at partner store locations.
5. **`ventas`**: Transactional sales log recording actual prices and timestamps.

---

## 🚀 How to Run the Database
1. Open SQL Server Management Studio (SSMS).
2. Execute the script located in `schema.sql` to build the database and table structures.
3. Execute `seed.sql` to populate initial business data.

---
