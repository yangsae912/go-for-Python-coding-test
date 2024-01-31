# SELECT
#   a.car_id, b.car_type, 
#   FLOOR(30*DAILY_FEE*(1-DISCOUNT_RATE/100)) AS FEE 
# FROM
#   CAR_RENTAL_COMPANY_RENTAL_HISTORY a
#   LEFT JOIN CAR_RENTAL_COMPANY_CAR b ON a.car_id = b.car_id
#   LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN c ON b.car_type = c.car_type
# WHERE 
# DATE(START_DATE) <= '2022-11-30'
# AND DATE(END_DATE) >= '2022-11-01'
# AND duration_type = '30일 이상'
# AND FLOOR(30*DAILY_FEE*(1-DISCOUNT_RATE/100)) >= 500000
# AND FLOOR(30*DAILY_FEE*(1-DISCOUNT_RATE/100)) < 2000000
# AND b.car_type in ('SUV','세단')
# GROUP BY 1, 2, 3
# ORDER BY
#   3 DESC, 2 asc, 1 desc
  
  SELECT CAR_ID, C.CAR_TYPE, 
       FLOOR(30*DAILY_FEE*(1-DISCOUNT_RATE/100)) AS FEE 
FROM CAR_RENTAL_COMPANY_CAR C 
     JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN USING(CAR_TYPE) 
WHERE C.CAR_TYPE IN ('세단', 'SUV') 
      AND CAR_ID NOT IN (SELECT CAR_ID
                         FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
                         WHERE END_DATE >= '2022-11-1' 
                               AND START_DATE <= '2022-11-30')
      AND DURATION_TYPE = '30일 이상'
HAVING FEE >= 500000 AND FEE < 2000000 
ORDER BY FEE DESC, CAR_TYPE ASC, CAR_ID DESC 