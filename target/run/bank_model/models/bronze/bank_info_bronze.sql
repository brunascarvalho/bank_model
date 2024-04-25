
  
    

  create  table "ada"."public"."bank_info_bronze__dbt_tmp"
  
  
    as
  
  (
    
with source_bank_info as (
    select * from "ada"."public"."bank_info"
),

final as (
          select "ID" as "id"
           ,"Customer_ID" as "customer_id"
           ,"Month" as "month"
           ,"Name" as "name"
           ,"Age" as "age"
           ,"SSN" as "ssn"
           ,"Occupation" as "occupation"
           ,"Annual_Income" as "annual_income"
           ,"Monthly_Inhand_Salary" as "monthly_inhand_salary"
           ,"Num_Bank_Accounts" as "num_bank_accounts"
           ,"Num_Credit_Card" as "num_credit_card"
           ,"Interest_Rate" as "interest_rate"
           ,"Num_of_Loan" as "mum_of_loan"
           ,"Type_of_Loan" as "type_of_loan"
           ,"Delay_from_due_date" as "delay_from_due_date"
           ,"Num_of_Delayed_Payment" as "num_of_delayed_payment"
           ,"Changed_Credit_Limit" as "changed_credit_limit"
           ,"Num_Credit_Inquiries" as "num_credit_inquiries"
           ,"Credit_Mix" as "credit_mix"
           ,"Outstanding_Debt" as "outstanding_debt"
           ,"Credit_Utilization_Ratio" as "credit_utilization_ratio"
           ,"Credit_History_Age" as "credit_history_age"
           ,"Payment_of_Min_Amount" as "payment_of_min_amount"
           ,"Total_EMI_per_month" as "total_emi_per_month"
           ,"Amount_invested_monthly" as "amount_invested_monthly"
           ,"Payment_Behaviour" as "payment_behaviour"
           ,"Monthly_Balance" as "monthly_balance"
     from source_bank_info
)

select * from final
  );
  