-- 코드를 입력하세요
# select left(price, 1) as price_group, count(*) as products
# from product
# group by left(price, 1)
# select price
# from product
# limit 20;
select 
case when LENGTH(CONVERT(price, CHAR)) = 5 then left(price, 1) * 10000
else 0 end as price_group,
count(*)
from product
group by price_group
order by 1 asc