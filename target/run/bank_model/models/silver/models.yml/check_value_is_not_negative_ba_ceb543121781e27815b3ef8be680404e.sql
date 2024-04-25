select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
SELECT * FROM "ada"."public"."bank_info_silver" 
   WHERE num_of_delayed_payment < 0

      
    ) dbt_internal_test