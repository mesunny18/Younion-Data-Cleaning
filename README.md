# Younion-Data-Cleaning


This repository contains the SQL script used to **clean, standardize, and consolidate marketing and CRM data** for the Younion data engineering assignment.

The main goal of this project is to transform raw marketing and CRM data into **clean, analytics-ready tables** that answer key business questions such as lead attribution, channel performance, and cost per lead.

---

## 🧠 Project Context

Younion receives data from multiple sources — CRM, marketing platforms, and web events — that are not yet suitable for analysis.  
This repository demonstrates how to **clean and integrate data using SQL** by applying:
- Deduplication
- Standardization
- Date normalization

The final cleaned data can be used for further analytics (e.g., reporting dashboards or SQL reporting).

---

## 🗂 Repository Contents

| File                    | Description                                                                       |
|-------------------------|-----------------------------------------------------------------------------------|
| `cleaning the data.sql` | SQL script that performs data cleaning and transformation steps on source tables. |
---------------------------------------------------------------------------------------------------------------

## 📌 Data Cleaning Objectives

The SQL script includes steps to:
1. Load raw CRM and interaction data (assumed to be in staging tables).
2. Remove duplicates and inconsistent entries.
3. Standardize key fields such as email and campaign identifiers.
4. Create analytical tables that support business reporting.
5. Ensure cleaned data is ready for downstream queries and dashboards.

---

## 🧱 Data Model Overview

The script cleans and prepares the following logical entities:

### Raw Tables (Staging)
These represent raw data ingested from source CSVs or systems (CRM, marketing, web events).

### Cleaned Tables
Transformed and standardized tables with:
- Consistent identifier formats
- Unified email keys
- Normalized channel and campaign names

### Analytics Tables
Optimized tables for answering business questions such as:
- Unique leads by channel
- Cost per lead breakdown
- First interaction source per lead

---

## 🚀 How to Run the SQL Script

1. **Set up your database**  
   Create the required database (e.g., in PostgreSQL or MySQL).

2. **Load raw source data**  
   Create staging tables and load the CSVs (CRM leads, marketing campaigns, web events).

3. **Run the cleaning script**  
   Execute `cleaning the data.sql` in your SQL editor or command line tool.

4. **Verify results**  
   Inspect the cleaned tables for data quality checks and consistency.

---

## 🧼 Data Cleaning Highlights

The cleaning script handles:
- Normalizing email keys for joins
- Removing duplicate records
- Standardizing channel/campaign naming conventions
- Handling null or invalid values
- Preparing fact and dimension tables for analytics

---

## 📊 Business Value

Once cleaned, the data can be used to answer key marketing questions:
- How many unique leads did each channel generate?
- What is the cost per lead per channel?
- Which channel was the first interaction source for each lead?
- What data quality issues were found and addressed?

---



