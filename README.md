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

Recommendations:
  - Identify the causes of declining sales months “September”, Analyze seasonality and adjust promotions 
  - Consider offering incentives for customers to choose cost-effective shipping options.

![Olist Dashboards_page-0004](https://github.com/user-attachments/assets/4848c5ea-d9ed-4fd7-b195-07fd41ab06b1)

Recommendations:
  - Leverage the peak order hour (4:00 PM) by offering time-limited promotions or discounts to further boost sales during this period.
  - Improve the mobile shopping experience by optimizing the app.
  - Offer exclusive mobile-only deals to increase mobile order volume.

![Olist Dashboards_page-0005](https://github.com/user-attachments/assets/6b4571cd-4427-4ab5-8eda-3c7c4f8a7cc0)

Recommendations:
  - Identify peak processing times and allocate resources efficiently to avoid shipping bottlenecks.
  - 97.02% of orders are successfully delivered, 1.11% shipping rate, investigate the remaining 2.98% undelivered orders to understand any potential delays.
  - Optimize shipping workflows to increase the shipping rate, ensuring faster fulfillment.

![Olist Dashboards_page-0006](https://github.com/user-attachments/assets/41102149-3132-47e1-aa8f-c3bf62e5a69a)

Recommendations:
  - Segment late deliveries by region, vendor, and logistics provider to pinpoint problem areas.
  - Implement a proactive alert system for at-risk deliveries to take corrective action before orders become late.

![Olist Dashboards_page-0007](https://github.com/user-attachments/assets/58ad0a61-f779-4351-8155-eb94e8f9a3c3)

Recommendations:
  - Explore local warehouses or centers to store products closer to customers for faster delivery.
  - Reduce shipping time by optimizing logistics partnerships 
  - Analyze peak season bottlenecks (e.g., supplier delays, warehouse congestion, courier capacity).

![Olist Dashboards_page-0008](https://github.com/user-attachments/assets/03fe52b0-7f0f-4d8d-91e2-8c9acb847fb8)

Recommendations:
  - Expand into lower-revenue regions with targeted marketing and partnerships.
  - Enhance logistics in high-order states to maintain customer satisfaction and delivery efficiency.
  - Reduce freight costs in expensive states by optimizing warehouse locations and carrier agreements.

![Olist Dashboards_page-0009](https://github.com/user-attachments/assets/8e5677c6-2a20-440b-ba19-62158b8eb8e0)

Recommendations:
  - Optimize delivery logistics in states with high late delivery rates by partnering with faster carriers. 
  - Offer discounts for bulk purchases in states with higher AOV to retain high-value customers.
  - Implement automated order processing systems to reduce fulfillment durations in states with slow processing times.

DrillThrough each State:

![Olist Dashboards_page-0024](https://github.com/user-attachments/assets/130a38a2-922a-41c7-bc3f-c661d8c3badf)


#### 8.2. Products Reports:

![Olist Dashboards_page-0010](https://github.com/user-attachments/assets/5f1eb9df-353d-49cc-aceb-2a2e3af172f8)
Recommendations:

 - Increase the price slightly for high-demand products to improve revenue without impacting sales.

 - Ensure that top-performing high-demand products are always in stock.

 - Identify products with high freight costs and negotiate better deals with suppliers.

 - Offer discounts for frequently paired products (e.g., Informatica Accessories Bundle, Automotive Kit).

![Olist Dashboards_page-0011](https://github.com/user-attachments/assets/5557adff-fdfe-44af-bc9a-e508693a7509)
Recommendations:

 - Optimize Inventory for High Order Categories.

 - Highlight these categories in "limited-time offers" sections or push through email marketing.

 - Enhance SEO & product descriptions for Toys, Telephony, and Watches & Gifts to increase visibility.

![Olist Dashboards_page-0012](https://github.com/user-attachments/assets/aeb25f6e-2fcd-4d1e-bdd4-738b5ece1af2)
Recommendations:

 - Since 82% of revenue comes from premium brands, focus on high-end advertising, personalized offers & VIP loyalty programs.

 - Use brand collaborations & social media influencers to amplify reach.

 - Increase visibility on search filters & recommendation engines.

#### 8.3. Customers Reports:

![Olist Dashboards_page-0013](https://github.com/user-attachments/assets/2c7b4d6f-a519-4f6e-967a-2c790183179a)

Recommendations:

 - **Seasonal Promotions:**  with a drop in September and October. Plan marketing campaigns to boost sales .

 - **Improve Guest Conversion:**  Guest login (3,946). Encourage account creation with perks like faster checkout or first-time discounts.

 - **Analyze Customer Location:** Utilize customer city and state to create localized marketing strategies.

 - **Improve Conversion Rates for First-Time Customers:** Provide instant welcome discounts for first-time users. Use AI-driven product recommendations to personalize shopping experiences.

![Olist Dashboards_page-0014](https://github.com/user-attachments/assets/b788fe85-aa8f-4bab-811a-9f7e51795b19)
Recommendations:

 - **Activate Inactive Customers:**  Offer exclusive promotions for inactive users to encourage purchases.

 - **Increase Sales in Low-Performing States:**  invest in localized marketing. Provide region-specific offers to encourage more sales.

 - **Focus on High-Potential Cities:** Optimize logistics and delivery times in these regions for better customer satisfaction.Introduce loyalty programs in these cities to encourage repeat purchases.

 - **Increase Customer Lifetime Value (CLV):** Identify repeat buyers in high-performing cities and offer them VIP rewards.Encourage higher spending per order by bundling products or offering volume discounts.

![Olist Dashboards_page-0015](https://github.com/user-attachments/assets/f50f8d3b-e2a6-441b-b4bc-626513f899b4)
Recommendations:

 - **Convert One-Time Buyers into Frequent Buyers:**  Offer personalized product recommendations and special discounts for second purchases.Implement subscription-based offers for frequently bought products.

 - **Increase Mobile Transactions:**  Improve mobile UI/UX and ensure a fast, easy checkout process.Introduce mobile-exclusive discounts to increase mobile transactions.

 - **Increase Average Payment per Customer:** Offer limited-time discounts on premium products to encourage upselling.Provide membership tiers with benefits like free shipping for higher spending customers.

 
#### 8.4. Payment Methods Reports:

![Olist Dashboards_page-0016](https://github.com/user-attachments/assets/7d5c75be-fad7-4986-a8c7-7d8d48314abe)
Recommendations:

 - **Promote Credit Card Payments for Higher Revenue:**  77K transactions come from credit cards, contributing $12.54M, the highest among payment types.
Offer discounts or cashback for credit card users to encourage more usage.

 - **Boost Weekend Sales with Promotions:**  Weekend payments are only 22.91% of total sales.
Launch exclusive weekend flash sales or discounts to increase weekend revenue.

 - **Expand Payment Options for Customer Convenience:** Boleto payments (20K transactions) contribute $2.87M, which is significant.
Consider adding more alternative payment methods, such as e-wallets or Buy Now, Pay Later (BNPL) services, to attract a wider audience.

![Olist Dashboards_page-0017](https://github.com/user-attachments/assets/b6f63726-ede4-4ddf-9f97-fc915efc77d9)
Recommendations:

 - **Target High-Payment Cities for Premium Offers:**  Cities like Pianco, Nova Esperança, and Engenheiro have the highest average payments.Offer exclusive VIP memberships or premium products in these locations.

 - **Increase Sales in Low-Payment Months:** October, September, and December show lower payments.Implement seasonal campaigns, discounts, or bundle deals during these months.

 - **Promote Installment Plans for Higher Spending:** Installments usage is only 2.98%—a missed opportunity.Advertise easy, interest-free installment options for large purchases.

![Olist Dashboards_page-0018](https://github.com/user-attachments/assets/4a01577a-9cb5-4411-ae1d-98a3ea286cb4)
Recommendations:

 - **Strengthen Partnerships with Top Banks:**  Banco do Brasil (5.64M) and Itaú Unibanco (3.39M) handle most transactions.Offer exclusive discounts or faster payment processing for customers using these banks.

 - **Target Smaller Banks for Growth:** Caixa Econômica, Banco do Nordeste, Banrisul, and Bradesco have lower payment volumes.Launch co-branded promotions with these banks to attract new users.

 - **Drive More Weekend Payments:** Weekend transactions are low (22.91%).Promote weekend flash sales or bonus rewards for payments made on Saturdays & Sundays.


#### 8.5. Sellers Reports:

![Olist Dashboards_page-0019](https://github.com/user-attachments/assets/8ad29728-34c5-4ca6-995c-56e76fcf3e01)
Recommendations:

 - **Discount Bundles:** Offer tech bundles for Bullock Ltd and Gonzales PLC Sellers passed on Product Category.

 - **Expand in AM, RO, AC:** Run localized ads and reduce shipping costs to boost sales.
 
 - **Loyalty & Flash Sales:** Launch a rewards program and time-limited deals to drive repeat purchases.

![Olist Dashboards_page-0020](https://github.com/user-attachments/assets/2b901528-6c8a-444e-8252-0183ade66c3d)
Recommendations:

 - **Reduce Cancellation Rate:** Investigate and improve Stone-Jacobs and Mendoza Inc.'s order fulfillment.
   
 - **Enhance Delivery Speed:** Support slowest sellers with logistics optimization and better carrier partnerships.
   
 - **Maintain High On-Time Delivery:** Ensure top-performing sellers sustain efficiency with performance incentives.

![Olist Dashboards_page-0021](https://github.com/user-attachments/assets/b546f455-4dc0-4dd0-a3f7-83f8064c8a05)
Recommendations:

 - **Improve Seller Performance:** Focus on boosting Hess, Casey, and Grimes' performance (currently 46.58%).
   
 - **Reduce Late Shipping:** Address the 5.69% late shipping compliance rate to enhance customer satisfaction.
   
 - **Enhance Review Scores:** Increase positive feedback by improving service quality and delivery efficiency.

#### 8.6. Reviews Reports:

![Olist Dashboards_page-0022](https://github.com/user-attachments/assets/e41f1799-15ec-454d-8986-d48114983abd)
Recommendations:

 - **Improve Customer Experience for High-Negative Review Products:** Focus on Professional Bed Table Bath & Deluxe Furniture, as they have the highest negative reviews.Investigate common complaints and improve product quality or service.

 - **Enhance Low-Priced Product Quality:**  13K negative reviews are from products priced under $100.Ensure better quality control and set realistic expectations in product descriptions.

 - **Leverage Mendoza Inc’s Positive Reputation:** Mendoza Inc. is the top-rated seller—use this as a marketing advantage.Highlight their products in ads, homepage features, or exclusive deals.
 
 - **Convert Negative Reviews into Opportunities:** 20K negative reviews (20.63%)—actively respond and resolve issues.Offer refunds, replacements, or support to rebuild customer trust.


![Olist Dashboards_page-0023](https://github.com/user-attachments/assets/44b8c6d1-69bc-43f3-87e9-6181a417ceb2)
Recommendations:

 - **Improve Customer Experience to Increase Positive Reviews:** Address issues leading to 11.6% 1-star reviews—analyze common complaints and fix product/service problems.

 - **Focus on 50+ and 36-50 Age Groups for Engagement:**  These groups provide the most reviews (27K each), meaning they are active customers—use targeted offers and personalized campaigns to retain them.

 - **Leverage Positive Reviews for Marketing:** Highlight high-rated products in advertisements and social media. Encourage customers to leave reviews by offering incentives like small discounts on their next purchase.



_____________________________________________________________________________________
## (9/10) Tableau Dashboards:

 - Links of Interactive Dashboards @ Tableau Public:
    - <a href="https://public.tableau.com/app/profile/abdelrhman.samir1401/viz/Olist_Graduation/SalesPerformance">**Sales & Orders Dashboard**</a>
    
    - <a href="https://public.tableau.com/app/profile/abdelrahman.saleh/viz/OlistGraduationTableauuu/Dashboard2">**Products Dashboard**</a>
    
    - <a href="">**Customers Dashboard**</a>
    
    - <a href="https://public.tableau.com/app/profile/nafisa.elkady/viz/Tableau_17428481004510/SellerAnalysis">**Sellers Dashboard**</a>
    


#### 9.1. Sales & Orders Reports:

![Sales Performance (1)](https://github.com/user-attachments/assets/cfe84165-ada3-458a-869e-5980dbe4fd2c)

Recommendations:
  - Run seasonal discounts to address the sharp drop in September.
  - Optimize the mobile purchasing experience by improving app UI, streamlining checkout, and offering exclusive mobile promotions.


![Sales Geographics](https://github.com/user-attachments/assets/5cda3f03-46f3-4ac1-b9a0-14ddda6f2fad)

Recommendations:
  - Negotiate better shipping rates in High-Cost States RR, PB, RO to reduce logistics expenses.
  - Expand Market Share in Low-Performing States (AP, AL, GO).
  - Improving seller efficiency in MG, RJ, and RS could further boost sales.


#### 9.2. Products Reports:

![Products Performance](https://github.com/user-attachments/assets/865f4670-bca7-4e8a-9606-8a89d3f93835)

Recommendations:
  - Expand High-Performing Categories: Invest in marketing and stock availability for Beauty & Personal Care as it drives the most revenue.
  - Reevaluate Low-Performing Brands: Brands like FitLife, PetLove, and ArtCraft need promotional support or should be replaced with higher-demand brands.


#### 9.3. Customers Reports:

![Customer DemoGraphics](https://github.com/user-attachments/assets/51625205-c401-4909-bddf-6f904614ca67)

Recommendations:
  - Seasonal Promotions: with a drop in September and October. Plan marketing campaigns to boost sales .
  - Improve Guest Conversion Guest login (3,946). Encourage account creation with perks like faster checkout or first-time discounts.
  - Analyze Customer Location: Utilize customer city and state to create localized marketing strategies.

![Customer Transaction](https://github.com/user-attachments/assets/99821b6f-683b-4413-8cd4-d291928adba5)

Recommendations:
  - Improve Customer Satisfaction:  especially in the 50+ age group (5,748 negative reviews). Improve product quality and customer service for this segment.
  - Leverage Customer Reviews: Since 50,494 customers gave a rating of 5, use these testimonials in marketing to build trust.
  - Optimize Marketing by Location: The state of SP has the highest number of customers. Focus marketing efforts and promotions in high-performing states.

#### 9.4. Sellers Reports:

![Seller Analysis](https://github.com/user-attachments/assets/7cc46d1f-ee55-4cd3-97d7-006e0c143b23)

Recommendations:
  - Improve Customer Satisfaction:  especially in the 50+ age group (5,748 negative reviews). Improve product quality and customer service for this segment.
  - Leverage Customer Reviews: Since 50,494 customers gave a rating of 5, use these testimonials in marketing to build trust.
_____________________________________________________________________________________
## (10/10) Data Source:

<a href="https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce?select=olist_customers_dataset.csv">**Link of Data Source at Kaggle**</a>
_____________________________________________________________________________________

## Work Environment & Contributors:
  - <a href="https://trello.com/b/8pvc85FO/olist-iti-graduation-project-team05">**Link of Trello Work Environment**</a>
  
  This project was collaboratively managed using Trello, ensuring efficient task tracking, sprint planning, and progress monitoring. Trello facilitated clear communication and assignment of responsibilities among the team members, allowing seamless coordination and timely completion of deliverables. The development team consisted of:

    
  - Contributors:
    1) <a href="https://github.com/AbdelrhmanSamir6633">**Abdelrhman Samir Ebrahim.**</a>   "Team Leader"
    2) <a href="https://github.com/sarahfikry22">**Sarah Fikry Ezzat.**</a>   
    3) <a href="https://github.com/abdelrahmansaleh22">**Abdelrhman Mahmoud Saleh.**</a> 
    4) <a href="https://github.com/Nafisa455">**Nafisa Abdelaziz Elkady.**</a> 
    5) <a href="https://github.com/usamasayed">**Usama Maghraby.**</a> 







