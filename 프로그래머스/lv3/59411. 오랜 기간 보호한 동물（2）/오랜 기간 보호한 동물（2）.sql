-- 코드를 입력하세요
select i.animal_id, i.name
from animal_ins i 
inner join animal_outs o
on i.animal_id = o.animal_id
where round((o.datetime - i.datetime)) in (
SELECT round((o.datetime - i.datetime)) as diff_time
from animal_ins i
inner join animal_outs o
on i.animal_id = o.animal_id
order by diff_time DESC 
FETCH FIRST 2 ROWS ONLY
)



