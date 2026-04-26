# Global Development & Socio-Economic Risk Segmentation Analysis

## 📌 Project Overview

This project analyzes global country-level socio-economic data to identify high-risk and underdeveloped countries. The goal is to support data-driven decision-making for allocating international aid and development resources.

---

## 🛠 Tools & Technologies Used

* Python (Pandas, NumPy, Matplotlib, Seaborn)
* SQL (MySQL / SQLite)
* Power BI
* Jupyter Notebook / Google Colab

---

## 📂 Dataset Description

The dataset contains country-level indicators including:

* Income
* GDP per capita (gdpp)
* Child mortality (child_mort)
* Life expectancy (life_expec)
* Fertility rate (total_fer)
* Inflation
* Health expenditure
* Exports and Imports

---

## ⚙️ Project Workflow

### 1. Data Cleaning

* Removed duplicates and handled missing values
* Treated outliers using IQR method
* Corrected negative and extreme inflation values

### 2. Feature Engineering

Created new features:

* Development Index
* Trade Balance
* Health Impact Ratio

### 3. Exploratory Data Analysis (EDA)

* Univariate and bivariate analysis
* Correlation analysis
* Visualizations to understand patterns and relationships

### 4. Segmentation

Countries were categorized into:

* High Risk Country
* Developed Nation
* Emerging Economy
* High Inflation Risk
* Health Critical
* Low GDP Trap

Segmentation was implemented using Python and SQL (CASE statements).

### 5. SQL Analysis

* Created database table
* Loaded cleaned dataset
* Performed aggregation queries
* Generated segment-wise insights

### 6. Dashboard (Power BI)

Created an interactive 3-page dashboard:

* Global Overview
* Health & Economic Risk
* Segmentation Insights

---

## 📊 Key Insights

* Low-income countries have higher child mortality
* Higher health expenditure reduces mortality
* High fertility rates are associated with low GDP
* Developed countries show better life expectancy
* Inflation impacts economic stability

---

## 💡 Recommendations

* Prioritize funding for high-risk countries
* Improve healthcare investment in critical regions
* Control inflation in economically unstable countries
* Promote education in high fertility regions
* Support economic growth in emerging economies

---

## ▶️ How to Run the Project

1. Open the Jupyter Notebook / Colab file
2. Run all cells sequentially
3. Ensure dataset file is in the correct path
4. Execute SQL queries in MySQL / SQLite
5. Open Power BI dashboard or refer to screenshots

---

## 📌 Note

Due to Power BI performance issues, the dashboard is provided as screenshots along with the project.

---
