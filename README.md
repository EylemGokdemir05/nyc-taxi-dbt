# nyc-taxi-dbt

This repo contains a small dbt project that:
- loads raw NYC taxi tables from BigQuery (`nyc_raw` dataset)
- builds staging models (rename/clean)
- unions green & yellow trips into a single model
- enriches with dim_zones to create a fact table

How to run (dbt Cloud):
- Connect repo to dbt Cloud, set the BigQuery connection.
- dbt run
- dbt test
- dbt docs generate

  DBT Graph
 <img width="1325" height="452" alt="Screenshot 2025-11-28 at 17 16 33" src="https://github.com/user-attachments/assets/35af21bb-3fb7-4e63-99c3-278bc9ee815e" />

Project Docs
https://qo661.us1.dbt.com/accounts/70471823512116/runs/70471855256065/docs/#!/overview/nyc_taxi_dbt
