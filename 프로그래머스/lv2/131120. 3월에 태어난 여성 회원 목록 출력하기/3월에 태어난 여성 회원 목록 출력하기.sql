-- 코드를 입력하세요
SELECT MEMBER_ID, MEMBER_NAME, GENDER, to_char(DATE_OF_BIRTH, 'YYYY-MM-DD') as DATE_OF_BIRTH
from MEMBER_PROFILE
where TLNO like '010%'
and to_char(DATE_OF_BIRTH, 'MM') = 3 
and GENDER = 'W'
order by MEMBER_ID ASC