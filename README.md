# NYC Taxi Analytics – BigQuery & dbt Data Engineering Project
This project demonstrates a complete ELT workflow using Google BigQuery and dbt (data build tool).
The goal is to transform raw NYC Taxi CSV files into a clean, well-modeled analytical dataset using modern data engineering best practices.

                                                        ┌───────────────┐
                                                        │  Raw CSV Files │
                                                        └───────┬───────┘
                                                                │
                                                                ▼
                                                    ┌────────────────────────┐
                                                    │   BigQuery Raw Tables  │
                                                    └───────────┬────────────┘
                                                                │
                                                                ▼
                                                    ┌────────────────────────┐
                                                    │          dbt           │
                                                    │ Staging → Intermediate │
                                                    │         → Marts        │
                                                    └───────────┬────────────┘
                                                                │
                                                                ▼
                                                      Clean Analytics Models


## ⭐ Key Features
## 1. Raw Data Loading into BigQuery

- NYC Taxi CSV files were loaded directly into BigQuery

- Raw tables act as the source layer for dbt

- This setup mimics a lightweight cloud data lake → warehouse workflow

## 2. dbt Transformations

The project follows a classic modular dbt structure:

### Staging Layer

- Column renaming & standardization

- Data type cleanup

- Basic quality checks

### Intermediate Layer

- Business logic transformations

- Joining related entities

- Derived metrics and calculated fields

### Marts Layer

- Dimensional modeling (fact + dimension tables)

- Star-schema optimized for analytics

- Final clean tables ready for consumption

## 3. Data Quality

Implemented dbt schema tests, including:

- unique

- not_null

- relationships

- accepted_values

## 4. Documentation & Lineage

- Auto-generated dbt documentation site

- Model-level descriptions

- Full lineage graph showing dependencies

- YAML-based documentation for clarity and maintainability

## 🎯 Purpose of the Project

This project was built to demonstrate:

- ELT design using BigQuery

- Hands-on experience with dbt transformations

- Data modeling (Kimball-style)

- Testable and maintainable SQL workflows

- Realistic, production-style dbt project layout

## 📬 Contact

If you’d like to discuss the project or connect:
LinkedIn: linkedin.com/in/eylemgokdemir

## How to Run the Project (dbt Cloud)

1- Fork or clone this repository

2- Connect it to dbt Cloud

3- Configure a BigQuery connection

4- Run:

- dbt run
- dbt test
- dbt docs generate

5- Open the documentation:

- dbt docs serve



## DBT Graph
 <img width="1325" height="452" alt="Screenshot 2025-11-28 at 17 16 33" src="https://github.com/user-attachments/assets/35af21bb-3fb7-4e63-99c3-278bc9ee815e" />

#### The lineage graph below shows the transformation flow from raw BigQuery tables to staging and finally to the fact_trips model.

## Project Docs

![View dbt Project Documentation](https://qo661.us1.dbt.com/accounts/70471823512116/runs/70471855256065/docs/#!/overview/nyc_taxi_dbt)
