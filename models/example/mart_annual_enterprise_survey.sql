WITH
   {{config(materialized='table')}}

survey as (
SELECT * FROM {{ref('inter_annual_enterprise_survey')}} 
)

SELECT * FROM survey
