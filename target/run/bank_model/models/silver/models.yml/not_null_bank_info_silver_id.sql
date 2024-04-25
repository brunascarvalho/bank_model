select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "ada"."public"."bank_info_silver"
where id is null



      
    ) dbt_internal_test