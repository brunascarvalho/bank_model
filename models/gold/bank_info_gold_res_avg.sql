{{ config(order=4) }}
with source_ibm_prices as (
    select * from {{ source('bank_info_silver', 'bank_info_silver') }}
),

final as (
    select  source_ibm_prices.customer_id
           ,avg(num_of_delayed_payment) as mean_num_of_delayed_payment
           ,avg(num_credit_inquiries) as mean_num_credit_inquiries
    from source_ibm_prices
    group by customer_id
)

select * from final

