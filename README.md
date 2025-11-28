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