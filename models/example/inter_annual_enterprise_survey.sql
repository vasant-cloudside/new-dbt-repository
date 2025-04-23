With
{{config(materialized='view')}}

inter_survey as (
SELECT
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey01'),except=["ID1","Year"]) }},
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey02')) }}
FROM
     {{ ref('stg_annual_enterprise_survey02') }} AS t2
LEFT JOIN
     {{ ref('stg_annual_enterprise_survey01') }} AS t1
ON
    t1.ID1=t2.ID2
WHERE
     t2.Value <> 'C' AND t1.value1 <> 'C'

)

select * from inter_survey
#test3
