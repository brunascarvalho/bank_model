select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
SELECT * FROM "ada"."public"."bank_info_gold_res_avg" 
   WHERE mean_num_of_delayed_payment < 0

      
    ) dbt_internal_test