select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select mean_num_of_delayed_payment
from "ada"."public"."bank_info_gold_res_avg"
where mean_num_of_delayed_payment is null



      
    ) dbt_internal_test