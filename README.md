# Olist-E-Commerce-Analysis-ITI-Graduation-Project
## Project Description
This project provides an end-to-end Business Intelligence (BI) and Data Warehousing solution for Olist, a Brazilian e-commerce platform. The goal is to transform raw transactional data into meaningful insights using SQL Server, SSIS, SSAS, SSRS, Power BI, and Tableau. The project covers data extraction, transformation, loading (ETL), data modeling, dashboard development, and reporting.
_____________________________________________________________________
## Contents 

<a href="">**1) Business Case.**</a>

<a href="">**2) Database Description.**</a>

<a href="">**3) Tools and Technologies Used.**</a>

<a href="">**4) DWH Dimensional Modeling.**</a>

<a href="">**5) ETL process using SSIS.**</a>

<a href="">**6) Analysis using SSAS**</a>

<a href="">**7) SSRS Reports**</a>

<a href="">**8) PowerBI Dashboards.**</a>

<a href="">**9) Tableau Dashboards.**</a>

<a href="">**10) Data Source & Project Files.**</a>

_____________________________________________________________________________________
<a href="">**Work Environment & Contributors**</a>
_____________________________________________________________________________________

## (1/10) Business Case:

**Sales Performance Tracking:** Understanding revenue trends, customer purchasing behavior, and product category performance.
**Order and Review Sentiment Analysis:** Identifying key factors affecting customer satisfaction through order trends and product reviews.
**Geographic Expansion Strategy:** Analyzing sales distribution across different states in Brazil to optimize marketing and logistics.
**Delivery & Shipping Performance:** Reducing delivery delays and optimizing shipping strategies to enhance customer experience.
**Seller Performance Evaluation:** Assessing seller contribution, retention, and performance metrics to support business growth.

The primary objective of this analysis is to provide data-driven insights to optimize Olist’s operations and enhance decision-making. 
_____________________________________________________________________________________
## (2/10) Database Description:

The Olist E-Commerce Database is designed to support an end-to-end Business Intelligence (BI) solution by transforming raw transactional data into a structured OLAP Data Warehouse. This database enables efficient reporting and analysis of sales performance, customer behavior, seller metrics, and logistics efficiency.

**Source:** OLTP database with normalized transactional data.

**Target:** OLAP Data Warehouse optimized for analytical queries.

**Schema Type:** Galaxy Schema.

_____________________________________________________________________________________
## (3/10) Tools and Technologies Used:

_____________________________________________________________________________________
## (4/10) DWH Dimensional Modeling:

**Fact_OrderLifeCycle:** Stores transaction details, including order revenue, and delivery status.

**Fact_OrderPayments:** Stores order payment details.

**Dim_Customers:** Contains customer details, demographics and location details.

**Dim_Products:** Stores product categories, names, and seller details.

**Dim_Sellers:** Includes seller information and performance metrics.

**Dim_Date:** Provides a time hierarchy for trend analysis.

**Dim_Reviews:** Stores customer feedback and sentiment analysis.


_____________________________________________________________________________________
## (5/10) ETL process using SSIS:

**5.1_DIM_Sellers**
![01_DIM_Sellers](https://github.com/user-attachments/assets/b125c561-add2-46af-a9aa-59ac5d77c04f)

**5.2_DIM_Products**
![02_DIM_Products](https://github.com/user-attachments/assets/180a4f8e-6453-4749-8081-b7e46f255893)

**5.3_DIM_Reviews**
![03_DIM_Reviews](https://github.com/user-attachments/assets/e2f62343-30c5-4c0b-b4cb-ebc2ca59af04)

**5.4_DIM_Customers**
![04_DIM_Customers](https://github.com/user-attachments/assets/96a28d88-b807-4c18-a8bd-ec9e6f066445)

**5.5_Fact_OrderLifeCyle**
![05_Fact_OrderLifeCyle](https://github.com/user-attachments/assets/28f94337-e86b-4d54-b72e-2fa418a35732)

**5.6_Fact_OrderPayments**
![06_Fact_OrderPayments](https://github.com/user-attachments/assets/9102eb39-c7ad-4540-9f32-ebbecc422ff6)

_____________________________________________________________________________________
## (6/10) Analysis using SSAS:

![SSAS_Measures](https://github.com/user-attachments/assets/14c7168b-f5ae-4176-ac8f-c70dfcc5f992)

_____________________________________________________________________________________
## (7/10) SSRS Reports:

![Sales_Performance_Report_SSRS_Service](https://github.com/user-attachments/assets/f79471df-16c4-4161-862a-baf62e782526)
![Sellers_Report_SSRS_Service](https://github.com/user-attachments/assets/6ef512e6-0e84-442f-a78e-1852e62ae0ab)
![Olist Customer Report](https://github.com/user-attachments/assets/8c765bc2-234b-422e-9545-d5e7055467f6)
![Olist Payment Report](https://github.com/user-attachments/assets/f2514c45-2506-4b0b-ad0b-02ac4a97cd67)
![product report screenshot](https://github.com/user-attachments/assets/81d5fee4-ab5c-4f5c-9fba-c7b8734c53e1)
![Review Report Screenshot](https://github.com/user-attachments/assets/57385495-d7aa-40b6-a233-d031ab59d99c)

_____________________________________________________________________________________
## (8/10) PowerBI Dashboards:

_____________________________________________________________________________________
## (9/10) Tableau Dashboards:
![Sales Performance (1)](https://github.com/user-attachments/assets/cfe84165-ada3-458a-869e-5980dbe4fd2c)
![Sales Geographics](https://github.com/user-attachments/assets/5cda3f03-46f3-4ac1-b9a0-14ddda6f2fad)

_____________________________________________________________________________________
## (10/10) Data Source & Project Files:

_____________________________________________________________________________________










