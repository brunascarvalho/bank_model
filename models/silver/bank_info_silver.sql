{{ config(order=2) }}
with source_ibm_prices as (
    select * from {{ source('bank_info_bronze', 'bank_info_bronze') }}
),

cleaned_char as (
    select  id
            ,customer_id
            ,REGEXP_REPLACE(num_of_delayed_payment, '[^0-9]', '', 'g') as num_of_delayed_payment
            ,SPLIT_PART(credit_history_age, ' ', 1) as credit_history_age_years
            ,SPLIT_PART(credit_history_age, ' ', 4) as credit_history_months
            ,num_credit_inquiries
            ,1 as cst_join
    from source_ibm_prices
),

percentile as (
    select percentile_cont(0.01) within group (order by num_credit_inquiries asc) as num_credit_inquiries_lb
           ,percentile_cont(0.99) within group (order by num_credit_inquiries asc) as num_credit_inquiries_ub
           ,1 as cst_join
    from source_ibm_prices
),

result_1 as (
    select id
           ,customer_id
           ,coalesce(cast(num_of_delayed_payment as int), -1) as num_of_delayed_payment
           ,cast(REGEXP_REPLACE(credit_history_age_years, '[^0-9]', '', 'g') as int) as credit_history_age_years
           ,cast(REGEXP_REPLACE(credit_history_months, '[^0-9]', '', 'g') as int) as credit_history_months
           ,num_credit_inquiries
           ,num_credit_inquiries_lb
           ,num_credit_inquiries_ub
    from cleaned_char, percentile
    where cleaned_char.cst_join = percentile.cst_join
),

final as (
    select id
           ,customer_id
           ,num_of_delayed_payment
           ,credit_history_age_years
           ,credit_history_months
           ,num_credit_inquiries
           ,CASE
                WHEN num_credit_inquiries < num_credit_inquiries_lb THEN num_credit_inquiries_lb
                WHEN num_credit_inquiries > num_credit_inquiries_ub THEN num_credit_inquiries_ub
                ELSE num_credit_inquiries
            END new_num_credit_inquiries
    from result_1
)

select * from final

