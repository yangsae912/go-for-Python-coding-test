-- 코드를 입력하세요
-- SELECT extract(HOUR from DATETIME) as HOUR, count(*) as COUNT
-- from ANIMAL_OUTS
-- group by extract(HOUR from DATETIME)

-- select extract(HOUR from DATETIME) as HOUR
-- from ANIMAL_OUTS

SELECT cast(TO_CHAR(DATETIME, 'HH24') as integer) AS HOUR_MINUTE_SECOND, count(*) as COUNT
from ANIMAL_OUTS
where TO_CHAR(DATETIME, 'HH24') between 09 and 19
group by TO_CHAR(DATETIME, 'HH24') 
order by HOUR_MINUTE_SECOND

-- SELECT EXTRACT(HOUR FROM DATETIME) AS HOUR
-- FROM ANIMAL_OUTS;

-- select * from ANIMAL_OUTS