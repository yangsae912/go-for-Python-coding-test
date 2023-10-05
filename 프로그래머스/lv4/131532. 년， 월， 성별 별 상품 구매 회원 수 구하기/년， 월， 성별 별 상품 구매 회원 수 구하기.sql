-- 코드를 입력하세요
SELECT to_char(sales_date, 'YYYY') as year, cast(to_char(sales_date, 'mm') as integer ) as month, u.gender, count(distinct o.user_id) as users
from user_info u 
inner join online_sale o
on u.user_id = o.user_id
where gender is not null
group by to_char(sales_date, 'YYYY'), to_char(sales_date, 'mm'), u.gender
order by year, month, u.gender ASC


-- SELECT
--     EXTRACT(YEAR FROM SALES_DATE) YEAR,
--     EXTRACT(MONTH FROM SALES_DATE) MONTH, 
--     GENDER, 
--     COUNT(DISTINCT OS.USER_ID) USERS
-- FROM USER_INFO UI JOIN ONLINE_SALE OS
-- ON UI.USER_ID=OS.USER_ID
-- WHERE GENDER IS NOT NULL
-- GROUP BY
--     EXTRACT(YEAR FROM SALES_DATE), 
--     EXTRACT(MONTH FROM SALES_DATE), 
--     GENDER
-- ORDER BY YEAR, MONTH, GENDER ASC