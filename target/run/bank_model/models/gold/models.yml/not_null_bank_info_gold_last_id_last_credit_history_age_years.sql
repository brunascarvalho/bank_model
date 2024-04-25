select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select last_credit_history_age_years
from "ada"."public"."bank_info_gold_last_id"
where last_credit_history_age_years is null



      
    ) dbt_internal_test