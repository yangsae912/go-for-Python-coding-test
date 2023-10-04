-- 코드를 입력하세요
-- select FH.FLAVOR, II.INGREDIENT_TYPE
-- from FIRST_HALF as FH
-- inner join ICECREAM_INFO as II
-- on FH.FLAVOR = II.FLAVOR
-- where FH.TOTAL_ORDER >= 3000
-- and II.INGREDIENT_TYPE = 'fruit_based';

select FH.FLAVOR
from FIRST_HALF FH
inner join ICECREAM_INFO II
on FH.FLAVOR = II.FLAVOR
where FH.TOTAL_ORDER >= 3000
and II.INGREDIENT_TYPE = 'fruit_based'
order by FH.TOTAL_ORDER DESC;