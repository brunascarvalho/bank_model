






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and mean_num_of_delayed_payment >= 0 and mean_num_of_delayed_payment <= 5000
)
 as expression


    from "ada"."public"."bank_info_gold_res_avg"
    

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







