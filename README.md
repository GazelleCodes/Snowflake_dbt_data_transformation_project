# dbt & Snowflake Data Transformation Project

## Project Overview

This project demonstrates an end-to-end data transformation pipeline built using **dbt (Data Build Tool) and Snowflake**. It focuses on transforming raw customer and order data into clean, reliable, and structured datasets that can be used for business analysis and reporting.

The project follows dbt best practices by organising SQL transformations into staging, intermediate, and mart layers, while incorporating data quality testing, reusable macros, snapshots, seeds, and incremental models.

## Technologies Used

- **Snowflake:** Cloud data warehouse for storing and processing data.
- **dbt Core:** Data transformation and modelling.
- **Python:** Local development environment.
- **SQL:** Data cleaning, transformation, and business logic.
- **Jinja:** Reusable SQL logic and dynamic model configuration.

## Key Features

- **Data Loading:** Loaded customer and order CSV files into Snowflake using dbt seeds.
- **Staging Models:** Cleaned and standardised raw customer and order data.
- **Intermediate Models:** Calculated order amounts and handled refunded transactions.
- **Fact Table:** Created a final `fct_orders` model by combining order and customer information.
- **Data Quality Testing:** Implemented generic tests such as `unique`, `not_null`, and `relationships`, alongside custom SQL tests.
- **Incremental Models:** Implemented incremental loading to process new orders without rebuilding the entire fact table.
- **Snapshots:** Configured dbt snapshots to track changes in customer email addresses over time using the check strategy.
- **Macros and Jinja:** Created a reusable macro to calculate order amounts.
- **Documentation and Lineage:** Generated dbt documentation and visualised model dependencies using the DAG.
- **Project Organisation:** Applied separate materialisation strategies for staging, intermediate, and mart models.

## Project Architecture

The project follows a layered data transformation approach:

1. **Raw Data:** Original customer and order CSV files loaded into Snowflake.
2. **Staging Layer:** Cleans and standardises source data.
3. **Intermediate Layer:** Applies business logic and calculates order amounts and net amounts after refunds.
4. **Mart Layer:** Produces the final `fct_orders` table, combining customer and order information.

## Learning Outcomes

Through this project, I gained practical experience in:

- Connecting dbt Core to Snowflake.
- Building modular and reusable SQL transformations.
- Managing data dependencies using `source()` and `ref()`.
- Implementing data quality tests.
- Working with incremental models and snapshots.
- Creating reusable SQL macros with Jinja.
- Generating project documentation and understanding data lineage.
- Applying foundational analytics engineering practices.

## Final Outcome

Successfully built and tested a dbt transformation pipeline that converts raw customer and order data into analytics-ready datasets in Snowflake.

This project demonstrates foundational skills in **Analytics Engineering, Data Transformation, Data Modelling, and Cloud Data Warehousing**.

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
