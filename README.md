# 📦 E-Commerce Shipping & Delivery Performance Analysis (SQL)

## 📌 Project Overview
This project analyzes e-commerce shipping data to evaluate **delivery performance, warehouse efficiency, and customer satisfaction** using SQL.  
The objective is to identify operational bottlenecks and generate **actionable business insights** to improve logistics efficiency and customer experience.

---

## 📊 Dataset Information
- **Source:** Kaggle – E-Commerce Shipping Data  
- **Table:** `ecommerce_shipping`  
- **Domain:** Logistics / Supply Chain Analytics

### Key Columns Used
- `Reached_on_Time_Y_N` – Delivery status (On-Time / Late)  
- `Warehouse_block` – Warehouse identifier  
- `Product_importance` – Product priority (Low / Medium / High)  
- `Customer_rating` – Customer satisfaction score  
- `Weight_in_gms` – Shipment weight  
- `Discount_offered` – Promotional discount applied  

---

## 🛠️ Tools & Technologies
- **SQL (MySQL)**
- Aggregate Functions: `COUNT`, `SUM`, `AVG`
- Conditional Logic: `CASE`
- Window Functions: `RANK() OVER()`
- Business KPI Analysis

---

## 🔍 Analysis & Key Business Insights

### 1️⃣ Overall Delivery Performance
**Analysis**
- Measured total orders and delivery status distribution
- Calculated on-time vs late delivery percentages

**Insight**
> A significant portion of orders are delivered late, indicating inefficiencies in the shipping process that can negatively affect customer trust and retention.

---

### 2️⃣ Product Importance vs Delivery Delay
**Analysis**
- Compared late delivery percentages across product priority levels

**Insight**
> High-priority products show better delivery performance, while low-priority shipments experience higher delays, suggesting uneven logistics workload distribution.

---

### 3️⃣ Warehouse Performance Evaluation
**Analysis**
- Calculated total orders and late delivery percentages by warehouse
- Identified underperforming warehouses

**Insight**
> Certain warehouses consistently contribute to higher delays and should be prioritized for process optimization and capacity planning.

---

### 4️⃣ Customer Rating vs Delivery Timeliness
**Analysis**
- Compared average customer ratings for on-time and late deliveries
- Analyzed rating distribution for delayed orders

**Insight**
> Late deliveries receive significantly lower customer ratings, confirming a strong relationship between delivery speed and customer satisfaction.

---

### 5️⃣ Advanced Analysis: Warehouse Delay Ranking
**Analysis**
- Ranked warehouses using SQL window functions based on late delivery percentage

**Insight**
> Ranking warehouses helps decision-makers quickly identify the most critical logistics bottlenecks and focus improvement efforts where they will have the highest impact.

---

## 📂 Repository Structure
```text
├── ecommerce_shipping_table.sql
├── basic_exploration.sql
├── importance_delivery_percentage.sql
├── warehouse_total_orders.sql
├── customer_rating_vs_delivery.sql
├── warehouse_delay_ranking.sql
├── README.md
```
---

## 📈 Key Outcomes
- Identified high-impact delay contributors across warehouses and product priority levels
- Demonstrated practical use of SQL for operational and performance analytics
- Transformed raw logistics data into clear, actionable, business-ready insights

---

## 🎯 Conclusion
This project demonstrates strong SQL querying skills, analytical reasoning, and the ability to translate complex datasets into meaningful business insights.  

---

> 💡 *Open to freelance SQL analytics projects and entry-level data analyst opportunities.*

## 📬 Contact
**Suyash Nayak**  
📍 India  
📧 **Email:** suyashnayak11@gmail.com  
🔗 **LinkedIn:** *[Suyash Nayak](https://www.linkedin.com/in/suyash-nayak-4a1976384/)*  
🌐 **GitHub:** https://github.com/SuyashNayak-Analyst
