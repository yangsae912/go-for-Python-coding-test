-- 코드를 입력하세요
SELECT distinct(his.car_id)
from CAR_RENTAL_COMPANY_CAR com
inner join CAR_RENTAL_COMPANY_RENTAL_HISTORY his
on com.car_id = his.car_id
where com.car_type ='세단' 
and to_char(his.start_date, 'MM') = 10
order by his.car_id desc