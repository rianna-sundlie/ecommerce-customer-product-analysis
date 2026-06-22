# ACME Company Analysis - 2023
This repository contains a concise, reproducible analysis of ACME’s 2023 operations: customer distribution, product performance, payment behavior, and inventory management. The analysis was performed using SQL queries executed in Microsoft Access and forecasting/visualization in Excel.
The dataset used for this analysis is fictional and designed to simulate realistic business conditions.

## Project Overview
Goal: evaluate ACME’s 2023 performance and produce 2024 projections to inform marketing, product, payment, and inventory decisions.
Focus areas:
* Customer trends by region
* Top and bottom product performance
* Payment method usage and revenue
* Inventory efficiency and warehouse distribution
Final deliverable: report/ACME Company Report 2023 (PDF/DOCX).

### Data Source Notes
The SQL queries for this project were executed in Microsoft Access. The original Access database is no longer accessible; however, all extracted tables used in the analysis are included in the data/ folder to ensure reproducibility.

## Project Structure
acme-buisness-analysis/
* data/ - Exported tables used for analysis (CSV or XLSX)
* visuals/ - Exported charts used in the report (PNG)
* report/ - Final ACME Company Report (PDF or DOCX)
* sql/ - Text copies or screenshots of Access SQL queries

## Tools & Workflow
* Microsoft Access - SQL queries and data extraction
* Excel - forecasting models, charts, and visualizations
* Word / PDF - final report formatting
No external scripts or notebooks were used.

## Key Findings (high level)
* Customer Growth: Quebec and Manitoba show strong growth; Alberta and New Brunswick are declining.
* Product Performance: Top products drive revenue; bottom products show declining or negative projected revenue.
* Payments: VISA dominates; ApplePay adoption is rising.
* Inventory: Significant overstocking and stockout risks; Kelowna holds disproportionate inventory.
See report/ACME Company Report 2023 for full details, visuals, and recommendations.

## Known Limitations
The dataset is fictional and 2023 data required a 20% uplift to approximate year‑end totals. Forecasts use linear models and do not capture sudden market shifts or seasonality. See the Limitations section in the report for full details.

## Next Steps
* Add customer segmentation and profitability modeling.
* Perform shipping‑time analysis for declining regions.
* Build an inventory turnover dashboard and consider migrating to Power BI or Tableau for interactive reporting.

## License and Usage
This repository is for demonstration and portfolio use. If you want to reuse or adapt the materials, please credit the author and do not present the dataset as real client data.
