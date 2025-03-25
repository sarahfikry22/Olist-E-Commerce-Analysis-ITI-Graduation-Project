# Olist-E-Commerce-Analysis-ITI-Graduation-Project
## Project Description
This project provides an end-to-end Business Intelligence (BI) and Data Warehousing solution for Olist, a Brazilian e-commerce platform. The goal is to transform raw transactional data into meaningful insights using SQL Server, SSIS, SSAS, SSRS, Power BI, and Tableau. The project covers data extraction, transformation, loading (ETL), data modeling, dashboard development, and reporting.
_____________________________________________________________________
## Contents 

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#110-business-case">**1) Business Case.**</a>

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#210-tools-and-technologies-used">**2) Tools and Technologies Used.**</a>

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#310-oltp-database-description">**3) OLTP Database Description.**</a>

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#410-olap-dimensional-modeling-dwh">**4) OLAP Dimensional Modeling "DWH".**</a>

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#510-etl-process-using-ssis">**5) ETL process using SSIS.**</a>

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#610-analysis-using-ssas">**6) Analysis using SSAS**</a>

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#710-ssrs-reports">**7) SSRS Reports**</a>

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#810-powerbi-dashboards">**8) PowerBI Dashboards.**</a>

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#910-tableau-dashboards">**9) Tableau Dashboards.**</a>

<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#1010-data-source--project-files">**10) Data Source.**</a>

_____________________________________________________________________________________
<a href="https://github.com/AbdelrhmanSamir6633/Olist-E-Commerce-Analysis-ITI-Graduation-Project/blob/main/README.md#work-environment--contributors">**Work Environment & Contributors**</a>
_____________________________________________________________________________________

## (1/10) Business Case:

**Sales Performance Tracking:** Understanding revenue trends, customer purchasing behavior, and product category performance.
**Order and Review Sentiment Analysis:** Identifying key factors affecting customer satisfaction through order trends and product reviews.
**Geographic Expansion Strategy:** Analyzing sales distribution across different states in Brazil to optimize marketing and logistics.
**Delivery & Shipping Performance:** Reducing delivery delays and optimizing shipping strategies to enhance customer experience.
**Seller Performance Evaluation:** Assessing seller contribution, retention, and performance metrics to support business growth.

The primary objective of this analysis is to provide data-driven insights to optimize Olist’s operations and enhance decision-making. 
_____________________________________________________________________________________
## (2/10) Tools and Technologies Used:

  **1) MS SQL Server** – used to store and manage the Olist dataset, transforming it from an OLTP to an OLAP Data Warehouse.

  **2) SSMS (SQL Server Management Studio)** – for writing and executing SQL queries, managing the database, and optimizing performance.

  **3) SSIS (SQL Server Integration Services)** – An ETL tool used to extract, transform, and load data from multiple sources into the Data Warehouse.

  **4) SSAS (SQL Server Analysis Services)** – Used to build a Tabular Model, enabling multidimensional analysis with optimized querying and data aggregations.

  **5) SSRS (SQL Server Reporting Services)** – for creating paginated reports, visualizing sales and seller performance, and automating report distribution.

  **6) Power BI** – for developing interactive dashboards to visualize sales, orders, customer reviews, and geographic insights.

  **7) Power Query** – for cleaning, merging, and shaping raw data before analysis.

  **8) DAX (Data Analysis Expressions)** – used for creating calculated columns, measures, and KPIs for deeper analysis.

  **9) Tableau** – used for additional dashboard creation and data storytelling, enhancing analytical insights.

  **10) MDX (Multidimensional Expressions)** – used for retrieving data from OLAP cubes.

  **11) Excel** – Used for additional analysis, quick data exploration, and integrating pivot tables with Power Query for reporting.

  **12) Pivot Tables** – for summarizing and analyzing large datasets, supporting dynamic filtering and trend identification.

These tools collectively enable data integration, modeling, analysis, and visualization, supporting comprehensive business intelligence for the Olist E-Commerce Analysis project.

_____________________________________________________________________________________
## (3/10) OLTP Database Description:

#### 3.1. ERD
![Olist_ERD](https://github.com/user-attachments/assets/7b352f1b-3e09-4bf5-8520-2a94de39fa88)

#### 3.2. Database Modeling
![Mapping drawio](https://github.com/user-attachments/assets/a580435c-9446-4e0c-8107-8c3415699490)


#### 3.3. OLTP Database Model
![OLTP Data Model](https://github.com/user-attachments/assets/b8d48023-8670-4a91-991f-a43d41086295)


The Olist E-Commerce Database is designed to support an end-to-end Business Intelligence (BI) solution by transforming raw transactional data into a structured OLAP Data Warehouse. This database enables efficient reporting and analysis of sales performance, customer behavior, seller metrics, and logistics efficiency.

**Source:** OLTP database with normalized transactional data.

**Target:** OLAP Data Warehouse optimized for analytical queries.

**Schema Type:** Galaxy Schema.

_____________________________________________________________________________________
## (4/10) OLAP Dimensional Modeling "DWH":

#### OLAP Model **"DWH"**

![OLAP Data Model](https://github.com/user-attachments/assets/553ced0c-8ac8-4dd7-9b9c-b190ee436a67)


**Fact_OrderLifeCycle:** Stores transaction details, including order revenue, and delivery status.

**Fact_OrderPayments:** Stores order payment details.

**Dim_Customers:** Contains customer details, demographics and location details.

**Dim_Products:** Stores product categories, names, and seller details.

**Dim_Sellers:** Includes seller information and performance metrics.

**Dim_Date:** Provides a time hierarchy for trend analysis.

**Dim_Reviews:** Stores customer feedback and sentiment analysis.


_____________________________________________________________________________________
## (5/10) ETL process using SSIS:

In the Olist E-Commerce Analysis project, the SSIS (SQL Server Integration Services) ETL process is responsible for efficiently loading the Data Warehouse. The process includes:

 - **Extract:** Pulling raw data from the Olist transactional database.

 - **Transform:** Cleaning, standardizing, and applying business rules (e.g., handling null values, converting data types, and creating surrogate keys).

 - **Load:** Populating the OLAP Data Warehouse, structuring fact and dimension tables for optimized analysis.

 - **Automation:** Implementing incremental data loads and scheduling ETL jobs for ongoing updates.

This step ensures data consistency, integrity, and readiness for advanced analytics in SSAS, SSRS, and Power BI.


**5.1. DIM_Sellers**

![01_DIM_Sellers](https://github.com/user-attachments/assets/b125c561-add2-46af-a9aa-59ac5d77c04f)

**5.2. DIM_Products**

![02_DIM_Products](https://github.com/user-attachments/assets/180a4f8e-6453-4749-8081-b7e46f255893)

**5.3. DIM_Reviews**

![03_DIM_Reviews](https://github.com/user-attachments/assets/e2f62343-30c5-4c0b-b4cb-ebc2ca59af04)

**5.4. DIM_Customers**

![04_DIM_Customers](https://github.com/user-attachments/assets/96a28d88-b807-4c18-a8bd-ec9e6f066445)

**5.5. Fact_OrderLifeCyle**

![05_Fact_OrderLifeCyle](https://github.com/user-attachments/assets/28f94337-e86b-4d54-b72e-2fa418a35732)

**5.6. Fact_OrderPayments**

![06_Fact_OrderPayments](https://github.com/user-attachments/assets/9102eb39-c7ad-4540-9f32-ebbecc422ff6)

_____________________________________________________________________________________
## (6/10) Analysis using SSAS:

In the Olist E-Commerce Analysis project, the SSAS (SQL Server Analysis Services) step involves building a Tabular Model to enable advanced analytics and efficient querying. The process includes:

  - **Connecting to the Data Warehouse:** Importing fact and dimension tables.

  - **Data Modeling:** Defining relationships, hierarchies, and calculated columns.

  - **Implementing DAX Measures:** Creating KPIs like total sales, average order value, and seller performance.

  - **Optimization:** Using aggregations, partitions, and indexing for performance improvement.

  - **Deployment:** Publishing the SSAS model for integration with Power BI and SSRS for reporting.

![SSAS_Measures](https://github.com/user-attachments/assets/14c7168b-f5ae-4176-ac8f-c70dfcc5f992)

_____________________________________________________________________________________
## (7/10) SSRS Reports:

In the Olist E-Commerce Analysis project, the SSRS (SQL Server Reporting Services) step focuses on creating interactive and paginated reports for in-depth analysis.

![Sales_Performance_Report_SSRS_Service](https://github.com/user-attachments/assets/f79471df-16c4-4161-862a-baf62e782526)

![Sellers_Report_SSRS_Service](https://github.com/user-attachments/assets/6ef512e6-0e84-442f-a78e-1852e62ae0ab)

![Olist Customer Report](https://github.com/user-attachments/assets/8c765bc2-234b-422e-9545-d5e7055467f6)

![Olist Payment Report](https://github.com/user-attachments/assets/f2514c45-2506-4b0b-ad0b-02ac4a97cd67)

![product report screenshot](https://github.com/user-attachments/assets/81d5fee4-ab5c-4f5c-9fba-c7b8734c53e1)

![Review Report Screenshot](https://github.com/user-attachments/assets/57385495-d7aa-40b6-a233-d031ab59d99c)


_____________________________________________________________________________________
## (8/10) PowerBI Dashboards:

  - <a href="https://app.powerbi.com/view?r=eyJrIjoiMWM3ZTFkNzQtYWY0OS00NTBiLThiODgtZWZkMjRiY2RkMDg4IiwidCI6ImFiZmYzMTIyLTQ0NWMtNDFjMy04NmNiLTZiZWQxOTI0YzEyZCJ9">**Link of Interactive Power BI Dashboards**</a>


#### 8.0. Home Page:

![Olist Dashboards_page-0001](https://github.com/user-attachments/assets/1c787d9d-1f0a-4104-805f-0cc30fad1740)

![Olist Dashboards_page-0002](https://github.com/user-attachments/assets/ac7b70bd-cd0e-41ad-a07e-6bb92c559e3d)


#### 8.1. Sales & Orders Reports:

![Olist Dashboards_page-0003](https://github.com/user-attachments/assets/644eb034-38e0-40f6-b3ae-9fd48f7cfd60)

![Olist Dashboards_page-0004](https://github.com/user-attachments/assets/4848c5ea-d9ed-4fd7-b195-07fd41ab06b1)

![Olist Dashboards_page-0005](https://github.com/user-attachments/assets/6b4571cd-4427-4ab5-8eda-3c7c4f8a7cc0)

![Olist Dashboards_page-0006](https://github.com/user-attachments/assets/41102149-3132-47e1-aa8f-c3bf62e5a69a)

![Olist Dashboards_page-0007](https://github.com/user-attachments/assets/58ad0a61-f779-4351-8155-eb94e8f9a3c3)

![Olist Dashboards_page-0008](https://github.com/user-attachments/assets/03fe52b0-7f0f-4d8d-91e2-8c9acb847fb8)

![Olist Dashboards_page-0009](https://github.com/user-attachments/assets/8e5677c6-2a20-440b-ba19-62158b8eb8e0)


  - DrillThrough each State:

![Olist Dashboards_page-0024](https://github.com/user-attachments/assets/130a38a2-922a-41c7-bc3f-c661d8c3badf)


#### 8.2. Products Reports:



#### 8.3. Customers Reports:



#### 8.4. Payment Methods Reports:



#### 8.5. Sellers Reports:
![Olist Dashboards_page-0019](https://github.com/user-attachments/assets/8ad29728-34c5-4ca6-995c-56e76fcf3e01)
![Olist Dashboards_page-0020](https://github.com/user-attachments/assets/2b901528-6c8a-444e-8252-0183ade66c3d)
![Uploading Olist Dashboards_page-0021.jpg…]()


#### 8.6. Reviews Reports:

![Olist Dashboards_page-0022](https://github.com/user-attachments/assets/e41f1799-15ec-454d-8986-d48114983abd)

![Olist Dashboards_page-0023](https://github.com/user-attachments/assets/44b8c6d1-69bc-43f3-87e9-6181a417ceb2)


_____________________________________________________________________________________
## (9/10) Tableau Dashboards:

 - Links of Interactive Dashboards @ Tableau Public:
    - <a href="https://public.tableau.com/app/profile/abdelrhman.samir1401/viz/Olist_Graduation/SalesPerformance">**Sales & Orders Dashboard**</a>
    
    - <a href="">**Products Dashboard**</a>
    
    - <a href="">**Customers Dashboard**</a>
    
    - <a href="https://public.tableau.com/app/profile/nafisa.elkady/viz/Tableau_17428481004510/SellerAnalysis">**Sellers Dashboard**</a>
    


#### 9.1. Sales & Orders Reports:

![Sales Performance (1)](https://github.com/user-attachments/assets/cfe84165-ada3-458a-869e-5980dbe4fd2c)

![Sales Geographics](https://github.com/user-attachments/assets/5cda3f03-46f3-4ac1-b9a0-14ddda6f2fad)

#### 9.2. Products Reports:

![Products Performance](https://github.com/user-attachments/assets/865f4670-bca7-4e8a-9606-8a89d3f93835)

#### 9.3. Customers Reports:

![Customer DemoGraphics](https://github.com/user-attachments/assets/51625205-c401-4909-bddf-6f904614ca67)

![Customer Transaction](https://github.com/user-attachments/assets/99821b6f-683b-4413-8cd4-d291928adba5)

#### 9.4. Sellers Reports:

![Seller Analysis](https://github.com/user-attachments/assets/7cc46d1f-ee55-4cd3-97d7-006e0c143b23)

_____________________________________________________________________________________
## (10/10) Data Source:

<a href="https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce?select=olist_customers_dataset.csv">**Link of Data Source at Kaggle**</a>
_____________________________________________________________________________________

## Work Environment & Contributors:
  - <a href="https://trello.com/b/8pvc85FO/olist-iti-graduation-project-team05">**Link of Trello Work Environment**</a>
  
  This project was collaboratively managed using Jira, ensuring efficient task tracking, sprint planning, and progress monitoring. Jira facilitated clear communication and assignment of responsibilities among the team members, allowing seamless coordination and timely completion of deliverables. The development team consisted of:

    
  - Contributors:
    1) <a href="https://github.com/AbdelrhmanSamir6633">**Abdelrhman Samir Ebrahim.**</a>   "Team Leader"
    2) <a href="https://github.com/sarahfikry22">**Sarah Fikry Ezzat.**</a>   
    3) <a href="https://github.com/abdelrahmansaleh22">**Abdelrhman Mahmoud Saleh.**</a> 
    4) <a href="https://github.com/Nafisa455">**Nafisa Abdelaziz Elkady.**</a> 
    5) <a href="https://github.com/usamasayed">**Usama Maghraby.**</a> 







