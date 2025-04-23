with 
survey as (
select * from `neon-mesh-452005-v4.dbt_internal.annual_enterprise_survey02`),
x2 as (
select 
	id as ID2,
        Year as Year2,
	Value as Value,
	Units,
	Variable_category,
        Industry_aggregation_NZSIOC,
        Industry_code_NZSIOC,
        Industry_name_NZSIOC
        from 
        survey)

select * from x2
