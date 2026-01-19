# Younion-Data-Cleaning

This repository contains SQL scripts used to clean, transform, and prepare marketing, CRM, and interaction data for analytics. The scripts convert raw staging tables into clean, consistent, and analytics-ready tables for lead attribution and performance analysis.

---

## 📁 Repository Contents

| File | Description |
|------|-------------|
| `cleaning the data.sql` | SQL script that performs data cleaning and transformations on source (staging) tables. |
| `First interaction table.sql` | SQL script to determine the **first interaction channel/source** for each lead. |

---

## 🧠 Project Summary

Marketing, CRM, and web event data for Younion are fragmented and inconsistent across source systems. This project demonstrates how to apply SQL transformations to:

- Deduplicate raw data
- Standardize identifiers and fields (e.g., email, channels)
- Clean event timestamps and campaign fields
- Identify first interaction channels for leads
- Produce analytics tables for reporting and BI

The end result is clean data that answers core business metrics such as:

- Unique leads by channel
- Cost per lead per channel
- First source of interaction for each lead

---

## 🗂 Data Cleaning & Transformation Workflow

1. **Load raw data into staging tables**  
   Load CSV data from source systems (CRM, marketing campaigns, web events) into staging tables (e.g., `stg_crm_leads`, `stg_marketing_campaigns`, `stg_web_events`).

2. **Run cleaning script (`cleaning the data.sql`)**  
   This script:
   - Standardizes common fields (e.g., `email`)
   - Removes duplicate or invalid records
   - Normalizes channel and campaign names
   - Creates clean tables for analysis

3. **Run first interaction script (`First interaction table.sql`)**  
   This script aggregates interactions across sources and calculates the **first touch** or **first interaction source** for each lead. It identifies the earliest interaction across CRM creation, marketing touches, and web events.

---

## 🧾 SQL Script Details

### 📌 `cleaning the data.sql`

This script:
- Loads and cleans raw staging data
- Applies deduplication logic
- Standardizes identifiers
- Outputs clean intermediate tables for downstream queries

**Key transformations include:**
- Lowercasing and trimming emails
- Normalizing channel names
- Removing invalid dates and costs

---

### 📌 `First interaction table.sql`

This script identifies the **first interaction channel/source** for each lead by:
- Combining interactions from cleaned CRM, marketing, and web tables
- Ordering interactions by timestamp
- Selecting the earliest interaction for each unique lead

The output helps answer the business question:
> *“Which channel did the lead interact with first?”*

This is especially useful for marketing attribution and reporting.

---

## 📊 Cleaned Outputs

After both scripts execute, the database contains analytics-ready tables such as:

- Cleaned CRM leads
- Normalized marketing interactions
- Consolidated interaction history
- First interaction per lead

These outputs enable deeper analytics and reporting in BI platforms such as Power BI or Looker Studio.

---

## 🛠 Requirements & Setup

1. **Database**: PostgreSQL, MySQL, or compatible SQL database.
2. **Staging Tables**: Load raw CSVs into staging tables before running scripts.
3. **Execution Order**:
   - Run `cleaning the data.sql`
   - Then run `First interaction table.sql`

---






