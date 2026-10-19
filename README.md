# Real Estate Market & Listing Performance Analytics

### SQL | Microsoft Power BI

## Project Overview

This project analyzes real estate property listings to understand market pricing, property inventory, listing status, and listing performance. Using PostgreSQL for data analysis and Microsoft Power BI for visualization, the project explores property prices across locations and property types, examines listing durations, and evaluates listing agent activity.

The project includes nine SQL queries covering key aspects of real estate analytics and a Power BI dashboard that presents important property metrics, listing status distribution, market trends, and property-level details.

## Business Objectives

- Analyze average and median property prices across cities and states.
- Compare property prices and price per square foot across property types.
- Understand the distribution of sold, pending, and for-sale properties.
- Examine average and median days on market by listing status.
- Identify the 20 longest-listed properties for further investigation.
- Analyze pricing, property size, and price per square foot by bedroom count.
- Evaluate listing agent activity using listing volumes, status breakdowns, and average days on market.
- Explore property inventory distribution across cities and states.
- Present key metrics and trends through an interactive Power BI dashboard.

## Tools & Technologies

- **PostgreSQL** — SQL querying, aggregation, filtering, statistical analysis, and performance analysis.
- **Microsoft Power BI** — Dashboard development, KPI cards, charts, and property-level reporting.
- **CSV Dataset** — Source data for property listings and analysis.

## SQL Analysis

The project contains nine analytical queries:

| No. | Analysis | Purpose |
| --- | --- | --- |
| 1 | Property Prices by City | Compare average and median property prices across cities and states. |
| 2 | Price Analysis by Property Type | Examine property counts and average, minimum, and maximum prices. |
| 3 | Price per Square Foot | Compare property values relative to property size. |
| 4 | Inventory by Listing Status | Calculate listing counts and their percentage of total inventory. |
| 5 | Days on Market by Status | Compare average and median listing duration across statuses. |
| 6 | Longest-Listed Properties | Identify the 20 properties with the highest recorded days on market. |
| 7 | Price Analysis by Bedrooms | Compare property prices, average area, and price per square foot by bedroom count. |
| 8 | Listing Agent Performance | Examine agent listing volumes, sold, pending, and active listings, and average days on market. |
| 9 | Inventory by State and City | Analyze geographic listing distribution and status breakdowns. |

## Power BI Dashboard

The dashboard provides a consolidated view of real estate inventory and listing activity.

**Key dashboard components:**

- **KPI Cards:** Display total properties, sold properties, for-sale properties, and pending properties.
- **Property Status Distribution:** Visualize the proportion of listings across different statuses.
- **Listing Trends:** Present days-on-market categories and price trends.
- **Agent Information:** Display listing agent details.
- **Property Status by Type:** Compare listing status across property types.
- **Property Details Table:** Explore individual records, including property ID, address, city, area, plot size, price, and status.

### Dashboard Snapshot

Add your Power BI dashboard screenshot to the repository and update the image path below.

![Real Estate Analytics Dashboard](images/real-estate-dashboard.png)

## Key Metrics

The dashboard displays the following inventory metrics:

| Metric | Value |
| --- | ---: |
| Total Properties | 3,000 |
| Sold Properties | 1,045 |
| For-Sale Properties | 957 |
| Pending Properties | 998 |

These figures summarize the property inventory represented in the dashboard.

## Business Value

The project demonstrates how SQL-based analysis and business intelligence reporting can support real estate market monitoring.

- **Pricing Analysis:** Compare property values across locations, property types, and bedroom categories.
- **Inventory Monitoring:** Understand how listings are distributed across sold, pending, and for-sale statuses.
- **Listing Duration Analysis:** Identify properties that have remained listed for extended periods.
- **Agent Activity Analysis:** Compare listing volumes and status breakdowns across agents.
- **Decision Support:** Present key metrics and detailed property information in a consolidated dashboard.

The analysis provides a foundation for further investigation into property pricing patterns, listing duration, and inventory distribution.

## Project Structure

A suggested repository structure is:

```text
Real-Estate-Market-Analytics/
│
├── SQL.sql
├── README.md
├── images/
│   └── real-estate-dashboard.png
└── dataset/
    └── real_estate.csv
