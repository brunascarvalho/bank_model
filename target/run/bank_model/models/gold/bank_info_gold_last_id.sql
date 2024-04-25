
  
    

  create  table "ada"."public"."bank_info_gold_last_id__dbt_tmp"
  
  
    as
  
  (
    
with source_ibm_prices as (
    select * from "ada"."public"."bank_info_silver"
),

last_id as (
    select customer_id, 
           max(id) as max_id
    from source_ibm_prices
    group by customer_id
),

final as (
    select source_ibm_prices.customer_id
           ,credit_history_age_years as last_credit_history_age_years
           ,credit_history_months as last_credit_history_months
    from source_ibm_prices, last_id
    where source_ibm_prices.id = last_id.max_id
)

select * from final
  );
  