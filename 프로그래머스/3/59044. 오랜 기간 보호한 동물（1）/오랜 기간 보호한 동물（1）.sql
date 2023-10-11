-- 코드를 입력하세요
select ins.name, ins.datetime
from animal_ins ins
left outer join animal_outs outs
on ins.animal_id = outs.animal_id
where outs.name is null
and ins.name is not null
order by 2
fetch first 3 rows only