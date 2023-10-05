-- 코드를 입력하세요
-- SELECT animal_type, nvl(name, 'No Name'), sex_upon_intake
-- A368930
select animal_type, nvl(name, 'No name') as name, sex_upon_intake
from animal_ins
order by animal_id asc