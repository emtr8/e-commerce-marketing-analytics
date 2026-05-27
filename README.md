
# E-Commerce Marketing Analytics | Portfolio Case Study

**Author:** Emma Trapp
**Tools:** Python • SQL (SQLite) • Pandas • Matplotlib • Seaborn • SciPy
**Dataset:** Synthetic multi-table e-commerce dataset (Kaggle) - [Link to Dataset](https://www.kaggle.com/datasets/geethasagarbonthu/marketing-and-e-commerce-analytics-dataset)

---

## Project Goal

This project demonstrates end-to-end marketing analytics skills through a realistic e-commerce case study.
It covers the full analytics workflow: **data ingestion → cleaning → SQL analysis → statistical testing → visualization → business recommendations**.

## Project Structure

```
ecommerce-marketing-analytics/
├── data/
│   └── raw/
├── notebooks/
│   └── ecommerce_marketing_analytics.ipynb   ← This notebook
├── sql/
├── visuals/
├── README.md
└── requirements.txt
```
## Data Access Note

The raw dataset is not stored in this repository due to file size limits. To reproduce this analysis, download the dataset from Kaggle and place the CSV files in `data/raw/`.

## Key Analyses

| Section | Analysis | Skills Demonstrated |
|---|---|---|
| 2 | Data Audit | Data quality assessment, null/duplicate analysis |
| 3 | Data Cleaning | Type conversion, feature engineering, table joins |
| 4 | SQL Analysis | Multi-table JOINs, CTEs, aggregations, window functions |
| 5 | KPI Dashboard | Business metrics, YoY analysis |
| 6 | Campaign Performance | Attribution, ROI, uplift analysis |
| 7 | Channel Analysis | CAC efficiency, cohort comparison |
| 8 | Funnel Analysis | Conversion optimization, drop-off quantification |
| 9 | A/B Testing | Chi-square test, statistical significance, lift analysis |
| 10 | Segmentation | LTV by tier/geo/age, behavioral cohorts |
| 11 | Product Analysis | Category mix, premium vs. standard, top SKUs |
| 12 | Refund & Discount | Revenue quality, promotional efficiency |
| 13 | Time-Series | MoM growth, seasonality, rolling averages |
| 14 | Recommendations | Prioritized business actions with expected impact |

## Key Insights

1. **Cart abandonment** is the single largest conversion opportunity — the gap between add-to-cart and purchase events represents significant recoverable revenue.
2. **Platinum customers** (~3% of base) generate revenue-per-customer 3-5x higher than Bronze — loyalty upgrade campaigns have asymmetric ROI.
3. **Paid Search and Email** campaigns deliver the strongest revenue per transaction, making them the priority channels for budget reallocation.
4. **Mobile conversion** underperforms desktop — a UX improvement initiative could unlock 1-3pp lift in overall purchase CVR.
5. **Category concentration** in top 2-3 categories is a risk — assortment expansion in adjacent categories is a medium-term growth lever.

## How to Run

```bash
# 1. Clone the repo
git clone https://github.com/yourusername/ecommerce-marketing-analytics.git

# 2. Install dependencies
pip install -r requirements.txt

# 3. Add data files to data/raw/
# (customers.csv, products.csv, events.csv, transactions.csv, campaigns.csv)

# 4. Open the notebook
jupyter notebook notebooks/ecommerce_marketing_analytics.ipynb
```

## Requirements

```
pandas>=2.0
numpy>=1.24
scipy>=1.10
matplotlib>=3.7
seaborn>=0.12
```

---

*This project was built as a portfolio demonstration of marketing analytics skills. The dataset is synthetic and does not represent real customer or business data.*
