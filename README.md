# COVID-19 Data Exploration Using PostgreSQL

## Project Overview

This project explores global **COVID-19 deaths and vaccination data** using **PostgreSQL** to uncover trends in infection rates, mortality, and vaccination progress across countries and continents. By analyzing real-world pandemic data, the project demonstrates how SQL can be used to transform large datasets into meaningful insights that support public health reporting and data-driven decision-making.

The analysis involved importing and preparing multiple datasets, cleaning and transforming the data, and combining COVID-19 case and vaccination records through SQL joins. Advanced SQL techniques were then applied to calculate infection rates, death percentages, vaccination coverage, rolling vaccination totals, and global health metrics. The final datasets were organized into reusable views to support visualization and business intelligence reporting.

---

## Project Objectives

* Analyze the spread and impact of COVID-19 across countries and continents.
* Compare infection and mortality rates among different regions.
* Measure vaccination progress over time.
* Identify countries with the highest infection and death rates.
* Calculate global COVID-19 statistics and health indicators.
* Prepare clean datasets for dashboards and data visualization.
* Demonstrate advanced SQL techniques using real-world healthcare data.

---

## Dataset

The project uses publicly available COVID-19 datasets containing information such as:

* Country
* Continent
* Date
* Total Cases
* New Cases
* Total Deaths
* New Deaths
* Population
* Total Vaccinations
* New Vaccinations

---

## Analysis Performed

The project includes several analytical tasks, including:

### Global Health Metrics

* Calculated total global cases and deaths.
* Computed global COVID-19 death percentages.
* Summarized worldwide pandemic statistics over time.

### Country-Level Analysis

* Identified countries with the highest infection rates relative to population.
* Ranked countries by total confirmed cases.
* Ranked countries by total deaths.
* Compared mortality rates across countries.

### Continental Analysis

* Measured the total impact of COVID-19 by continent.
* Compared infection and death trends across regions.

### Vaccination Analysis

* Joined deaths and vaccination datasets using common keys.
* Calculated cumulative (rolling) vaccination totals using window functions.
* Measured vaccination coverage as a percentage of the population.
* Analyzed vaccination progress over time for individual countries.

### Data Preparation

* Cleaned and transformed datasets for accurate analysis.
* Created reusable SQL views for reporting and visualization.
* Used temporary tables to simplify intermediate calculations.

---

## SQL Concepts Demonstrated

This project showcases a broad range of SQL skills, including:

* Data Cleaning
* Inner Joins
* Common Table Expressions (CTEs)
* Window Functions
* Aggregate Functions (`SUM`, `AVG`, `MAX`, `COUNT`)
* Rolling Calculations using `SUM() OVER()`
* Percentage Calculations
* Date-Based Analysis
* Temporary Tables
* Views
* Conditional Filtering
* Data Transformation

---

## Business Questions Answered

The analysis addresses questions such as:

* Which countries had the highest infection rates relative to their population?
* Which countries recorded the highest number of COVID-19 deaths?
* How did infection and mortality rates change over time?
* Which continents were most affected by the pandemic?
* What percentage of each country's population was vaccinated?
* How did vaccination campaigns progress throughout the pandemic?
* What are the overall global COVID-19 statistics?

---

## Key Insights

The analysis provides valuable insights, including:

* Identification of countries with the highest infection burden.
* Comparison of mortality rates across different regions.
* Trends in COVID-19 cases and deaths over time.
* Vaccination coverage across countries and continents.
* Rolling vaccination analysis to monitor immunization progress.
* Preparation of clean analytical datasets suitable for dashboards and reporting.

---

## Technologies Used

* PostgreSQL
* SQL
* pgAdmin
* Git & GitHub

---

## Skills Demonstrated

* SQL Programming
* Exploratory Data Analysis (EDA)
* Data Cleaning
* Data Transformation
* Healthcare Data Analytics
* Window Functions
* Common Table Expressions (CTEs)
* Joins
* Temporary Tables
* Views
* Time-Series Analysis
* Business Intelligence
* Data Visualization Preparation
* Analytical Thinking
* Data Storytelling

---

## Conclusion

This project demonstrates how PostgreSQL can be used to analyze large-scale public health data and generate actionable insights from complex datasets. By combining data cleaning, joins, window functions, CTEs, rolling calculations, temporary tables, and views, the project transforms raw COVID-19 case and vaccination records into meaningful metrics that support reporting and visualization. It highlights practical SQL skills in data exploration, healthcare analytics, and business intelligence, reflecting techniques commonly used by data analysts and analytics engineers to solve real-world problems.
