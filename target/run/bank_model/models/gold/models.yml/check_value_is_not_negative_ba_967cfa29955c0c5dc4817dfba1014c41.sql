select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
SELECT * FROM "ada"."public"."bank_info_gold_last_id" 
   WHERE last_credit_history_age_years < 0

      
    ) dbt_internal_test