WITH 
survey AS (
    SELECT * 
    FROM `neon-mesh-452005-v4.dbt_internal.annual_enterprise_survey01`
), 
x1 AS (
    SELECT 
	id as ID1,
        year as Year,
	value as value1,
        industry_name_ANZSIC as Industry_name,
        industry_code_ANZSIC as Industry_code,
        rme_size_grp as Size_group,
	variable,
        SUM(CAST(value AS INT64)) AS Total_Value 
    FROM survey
    GROUP BY
	ID1,
        Year,
	value1,
	variable,
        Industry_name,
        Industry_code,
        Size_group
)

SELECT * FROM x1
