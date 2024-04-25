
    
    

select
    id as unique_field,
    count(*) as n_records

from "ada"."public"."bank_info_silver"
where id is not null
group by id
having count(*) > 1


