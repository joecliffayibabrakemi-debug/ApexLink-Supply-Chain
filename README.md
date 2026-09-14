# ApexLink Supply Chain Analysis

An analysis of supplier performance, delivery time, sales, and data quality across ApexLink's supply chain.

A self-directed supply chain analysis using a fictional dataset to find business insights and make recommendations.


## Business Problem

ApexLink records orders from different suppliers, warehouses, products, and regions in one dataset.

The data had some problems, including different date formats, missing supplier and warehouse details, and no cost or inventory data.

This analysis looks at three main questions:

1. Where are delivery delays happening?
2. Which suppliers and products generate the most sales?
3. What data problems need to be fixed?

## Executive Summary

* **Revenue:** ApexLink generated ₦62.95bn from 500 orders. The top three products, Laptop, Soap, and Cement, generated 76.8% of total revenue. Dangote generated 33.0% of total revenue. South-South generated the highest regional revenue at ₦48.2bn.

* **Delivery:** 45.6% of orders were delivered late. Average delivery time was 33 days. Port Harcourt had the highest average delivery time. Dangote had the highest number of late deliveries, with 72.

* **Order status:** 294 orders were delivered, 71 were cancelled, 70 were returned, and 65 were pending. Cancelled and returned orders made up 28.2% of all orders.

* **Data quality:** About ₦11bn of revenue, or 17.5%, has no supplier name. The data also contains an Unknown warehouse category.
## Tools

**Excel:** Data cleaning, dashboard visualization and initial data checks.

**MySQL:** Data query, data retrieving, filtering, grouping, ranking, and views.

**Power BI:** Interactive dashboard development.

**DAX:** Sales, delivery rate, average delivery time, revenue share, and month-over-month growth calculations.

## Data Cleaning

Excel was used to clean and check the data before building the Power BI dashboard.

Main issues found:

* `OrderDate` was used for the analysis because `Order_Date` had different date formats and some different values.
* `N/A` supplier records were kept instead of removed. They account for about ₦11bn in revenue.
* `Unknown` warehouse records were kept and shown in the dashboard.
* Extra spaces in `Unit_Price` were removed.
* `Total Sales` was checked against `Quantity × Unit_Price`.
* Total Sales was created as a DAX measure using `SUMX`.

## MySQL Analysis

MySQL was used to check the data and calculate the main figures before rebuilding them in Power BI.

The SQL work included:

* Sales by supplier, warehouse, region, and product
* Order counts and quantities
* Filtering and grouped analysis
* Delivery performance
* Supplier and product rankings
* SQL views for delivered orders, late deliveries, and supplier sales

## Power BI Dashboard

An interactive Power BI dashboard was built to show sales, supplier performance, delivery performance, order status, and data quality.

## Executive Overview
<img width="1208" height="671" alt="Executive Overview" src="https://github.com/user-attachments/assets/367b15df-c753-406a-9c19-4a672f0c242d" />

## Operational Performance
<img width="1198" height="663" alt="Operational Performance" src="https://github.com/user-attachments/assets/a84a6c91-9884-4b74-ad19-76223dfb2949" />

## Excel Dashboard
<img width="1758" height="832" alt="Screenshot 2026-09-14 131308" src="https://github.com/user-attachments/assets/9cb09c6d-df02-4375-8503-d21362679c46" />

## MySQL Data Retrieving
<img width="1920" height="1021" alt="Screenshot 2026-09-14 152433" src="https://github.com/user-attachments/assets/b03b6eb8-84c0-4a01-99f9-c365b22c85d1" />



## Key Insights

* Laptop, Soap, and Cement generate 76.8% of total revenue.
* Dangote generates 33.0% of revenue and has the highest number of late deliveries at 72.
* Port Harcourt has the highest average delivery time.
* 141 orders, or 28.2% of all orders, were cancelled or returned.
* About 17.5% of revenue has no supplier name.
* The two date columns have different values for some orders, which can affect monthly analysis.

## Recommendations

1. Check the Port Harcourt and Dangote delivery records to understand why delays are high.
2. Review other suppliers such as Bua, Pz, and Unilever for products where supplier dependence is high.
3. Find out why orders are being cancelled or returned.
4. Fix the missing supplier and warehouse information.
5. Fix the two date columns before using the data for monthly or seasonal analysis.

## Project Challenges

The biggest challenge was finding different values in the two date columns. This was only noticed after checking the columns against each other.

Some orders also had missing supplier or warehouse information. These records were kept in the analysis instead of being removed.

## Project Limitations

This is a fictional portfolio project and does not represent real ApexLink business operations.

The dataset does not contain cost, profit, or inventory data. Therefore, profit, cost savings, and stock-level analysis could not be calculated.

The missing supplier and warehouse information also limits some supplier and warehouse comparisons.

## Business Value

The analysis shows where sales are concentrated, where delivery delays are high, and where the data needs improvement before business decisions are made.


