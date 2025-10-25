# Suicide Analysis in India (2001–2012) – SQL Project

## Project Overview
This project analyzes yearly suicide data in India from 2001 to 2012 using SQL. It includes state-wise trends, gender and age-group analysis, major causes of suicides, and insights for prevention. The project demonstrates how SQL can be used to explore large datasets and generate actionable insights.

## Dataset
The original dataset contains suicide records for all Indian states and Union Territories from 2001 to 2012.  
- **Columns:** `State`, `Year`, `Type_code`, `Type`, `Gender`, `Age_group`, `Total`  
- **Granularity:** Yearly  
- **Total Rows:** Over 2,00,000  

### Sample Dataset
For faster experimentation and import, a **sample dataset** is provided:  
- **`suicides_sample_1000.csv`** – Contains ~30 rows per state  
- Balanced representation across all states  
- Includes all genders and major age groups  

This sample allows quick SQL queries and analysis without heavy system load.

## Files
| File | Description |
|------|-------------|
| `sucide_data.csv` | Original dataset (full version) |
| `suicides_sample_1000.csv` | Balanced sample dataset (~1000 rows) |
| `SQL_sample_india_sucide.sql` | SQL scripts with analysis queries |
| `README.md` | Project documentation |

## SQL Analysis Performed
- State-wise total suicides  
- Yearly trend analysis  
- Male vs Female suicide distribution  
- Age group vulnerability analysis  
- Causes and methods of suicide  
- States with highest growth over time

## Tools Used
- MySQL / MySQL Workbench
- CSV for dataset storage
- SQL queries for data analysis

## Author
### Sahil Dawale
