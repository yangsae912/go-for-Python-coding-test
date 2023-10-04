-- 코드를 입력하세요
-- SELECT ingredient_type,  count(total_order) as total_order
-- from FIRST_HALF fh 
-- inner join ICECREAM_INFO ii
-- on fh.flavor = ii.flavor
-- group by ingredient_type
-- order by total_order 

select ingredient_type, sum(total_order) as total_order
from FIRST_HALF fh 
inner join ICECREAM_INFO ii
on fh.flavor = ii.flavor
group by ingredient_type
order by total_order 
