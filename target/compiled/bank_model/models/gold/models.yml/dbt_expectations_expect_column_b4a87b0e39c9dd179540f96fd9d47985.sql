






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and last_credit_history_age_years >= 0 and last_credit_history_age_years <= 50
)
 as expression


    from "ada"."public"."bank_info_gold_last_id"
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors







