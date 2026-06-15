# Carbon Dioxide Emissions and Economic Growth Across African Nations (2000–2023)

## Project Overview

This project investigates the relationship between carbon dioxide emissions and economic growth across 52 African countries between 2000 and 2023. Using credible public datasets and an integrated four-tool analytical methodology, the study examines whether Gross Domestic Product growth is the primary driver of increasing carbon dioxide emissions on the continent, identifies high-risk and carbon-efficient countries, and generates actionable policy recommendations for governments, development agencies and climate financing bodies.

---

## Project Question

**Are carbon dioxide emissions across African countries increasing over time, and is economic growth the primary contributing factor?**

---

## Key Findings

- African carbon dioxide emissions grew by **52.2%** between 2000 and 2023
- GDP grew significantly faster over the same period, confirming **partial continental decoupling**
- **Pearson correlation coefficient: r = 0.7712** (strong positive, p-value = 0.000000)
- Africa's top 10 emitters contribute only **3.27% of global CO2** despite 17% of world population
- **South Africa** is Africa's largest emitter at 435.7 million tonnes annually
- **Rwanda** is Africa's most carbon efficient economy with emission intensity of 0.051
- **Nigeria** leads Africa in both gas flaring (25.5 Mt) and methane emissions (258 Mt)
- **20 countries** classified as carbon efficient (decoupling)
- **43 countries** classified as high risk with above-average emission growth

---

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data cleaning, exploratory data analysis, pivot charts |
| SQL (Microsoft SQL Server) | Structured querying, 13 analytical queries |
| Python (Jupyter Notebook) | Correlation analysis, outlier detection, statistical testing |
| Microsoft Power BI | Interactive 6-page dashboard and visualization |

---

## Data Sources

| Source | Data Provided | URL |
|---|---|---|
| Our World in Data | CO2 emissions, GDP, population (primary dataset) | ourworldindata.org/co2-emissions |
| World Bank | GDP per capita, GDP growth rate | data.worldbank.org |
| International Energy Agency | CO2 by sector and fuel type for Africa | iea.org/regions/africa/emissions |

---

## Repository Structure

```
CO2-Africa-Project/
├── 1. Raw Data/
│   ├── owid-co2-datagithub.xlsx
│   ├── GDP_GROWTH.xls
│   ├── gdp_percapita.csv
│   ├── iea_co2_by_sector.csv
│   ├── iea_co2_by_fuel.csv
│   └── iea_co2_fuel_combustion.csv
│
├── 2. Clean Data/
│   └── owid-co2-africa-final.xlsx
│
├── 3. SQL Queries and Results/
│   ├── co2_analysis_queries.sql
│   └── query results (13 CSV files)
│
├── 4. Excel Analysis/
│   └── owid-co2-africa-final.xlsx (with EDA sheets)
│
├── 5. Power BI/
│   └── co2_africa_dashboard.pbix
│
├── 6. Python/
│   ├── co2_africa_python_analysis.ipynb
│   └── charts (10 PNG files)
│
└── 7. Final Report/
    ├── Project_Writeup.docx
    └── CO2_Africa_Presentation.pptx
```

---

## Python Libraries Used

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from scipy import stats
```

---

## Dashboard Pages (Power BI)

1. **Overview** — KPI cards, CO2 and GDP trend lines, top 10 emitters
2. **Emission Trends** — 6 trend line charts (2000 to 2023)
3. **Country and Regional Comparison** — Africa map, regional charts
4. **GDP vs CO2 and Decoupling** — Scatter plot, dual-axis chart, emission intensity ranking
5. **Sectoral and Global Impact** — Gas flaring, oil CO2, energy, global share
6. **Insights and Recommendations** — Executive summary, key insights, policy directions

---

## Variables Analysed

| Variable | Description | Unit |
|---|---|---|
| co2 | Total carbon dioxide emissions | Million tonnes |
| co2_per_capita | Emissions per person | Tonnes per person |
| co2_growth_prct | Annual emission growth rate | Percentage |
| co2_per_gdp | Emission intensity | Tonnes per USD |
| gdp | Gross Domestic Product | Current USD |
| population | Country population | People |
| flaring_co2 | Gas flaring emissions | Million tonnes |
| methane | Methane emissions | Million tonnes |
| oil_co2 | Oil combustion emissions | Million tonnes |
| energy_per_capita | Energy consumption per person | kWh per person |
| share_global_co2 | Share of global CO2 | Percentage |

---

## Policy Recommendations

1. **South Africa** — Accelerate coal-to-renewable energy transition
2. **Nigeria** — Enforce anti-flaring legislation and invest in gas capture infrastructure
3. **Development Agencies** — Fund replication of Rwanda's low-carbon development model
4. **Climate Financing Bodies** — Establish dedicated windows for 43 high-risk African nations
5. **All Stakeholders** — Build national carbon monitoring systems across all 52 countries

---

## Author

**Gbadegesin Mariam Omowumi**
Data Analysis Track | Seeding Africa Programme
FemTech Information Technology Institute | May 2026

GitHub: github.com/Kanyin-D-analyst
LinkedIn: linkedin.com/in/mariam-gbadegesin

---

## Acknowledgements

- Our World in Data for open-access CO2 dataset
- World Bank for open-access economic indicators
- International Energy Agency for Africa sectoral emission data
- FemTech Information Technology Institute and Seeding Africa Programme


