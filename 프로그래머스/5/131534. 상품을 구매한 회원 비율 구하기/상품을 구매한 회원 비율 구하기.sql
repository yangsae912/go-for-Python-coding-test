-- 코드를 입력하세요

-- SELECT TO_CHAR(SALES_DATE, 'YYYY') AS YEAR, TO_CHAR(SALES_DATE, 'MM') AS MONTH, COUNT(*) AS PUCHASED_USERS, COUNT(*)/count()
-- FROM ONLINE_SALE O
-- WHERE USER_ID IN 
--     ( 
-- -- 2021년에 가입한 user_id
-- --         SELECT USER_ID
-- --         FROM USER_INFO 
-- --         WHERE TO_CHAR(JOINED, 'YYYY') = '2021'
-- --     )
-- -- GROUP BY TO_CHAR(SALES_DATE, 'YYYY'), TO_CHAR(SALES_DATE, 'MM')

-- SELECT TO_CHAR(SALES_DATE, 'YYYY') AS YEAR, TO_CHAR(SALES_DATE, 'MM') AS MONTH, COUNT(O.USER_ID) AS PUCHASED_USERS, ROUND(COUNT(O.USER_ID)/count(U.USER_ID),1) AS PUCHASED_RATIO
-- FROM ( 
--          SELECT *
--          FROM USER_INFO 
--          WHERE TO_CHAR(JOINED, 'YYYY') = '2021'
--      ) U , ONLINE_SALE O 
-- where O.USER_ID = U.USER_ID
-- GROUP BY TO_CHAR(SALES_DATE, 'YYYY') , TO_CHAR(SALES_DATE, 'MM')

-- WITH TB1 AS(SELECT USER_ID FROM USER_INFO WHERE TO_CHAR(JOINED, 'YY') = 21)
-- SELECT 
--     EXTRACT(YEAR FROM SALES_DATE) YEAR,
--     EXTRACT(MONTH FROM SALES_DATE) MONTH,
--     COUNT(DISTINCT OS.USER_ID) PUCHASED_USERS,
--     ROUND(COUNT(DISTINCT OS.USER_ID) / (SELECT COUNT(*) FROM TB1), 1) PUCHASED_RATIO
-- FROM ONLINE_SALE OS 
-- JOIN TB1 T1 ON OS.USER_ID=T1.USER_ID
-- GROUP BY EXTRACT(YEAR FROM SALES_DATE), EXTRACT(MONTH FROM SALES_DATE)
-- ORDER BY YEAR, MONTH

WITH TB1 AS(SELECT USER_ID FROM USER_INFO WHERE TO_CHAR(JOINED, 'YY') = 21)
SELECT 
    EXTRACT(YEAR FROM SALES_DATE) YEAR,
    EXTRACT(MONTH FROM SALES_DATE) MONTH, 
    COUNT(DISTINCT OS.USER_ID) PUCHASED_USERS,
    ROUND(COUNT(DISTINCT OS.USER_ID) / (SELECT COUNT(*) FROM TB1), 1) PUCHASED_RATIO
FROM ONLINE_SALE OS
INNER JOIN TB1 T1 ON OS.USER_ID = T1.USER_ID
GROUP BY EXTRACT(YEAR FROM SALES_DATE) ,EXTRACT(MONTH FROM SALES_DATE) 
ORDER BY YEAR, MONTH
