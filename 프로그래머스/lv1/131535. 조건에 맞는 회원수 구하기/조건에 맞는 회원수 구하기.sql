-- 코드를 입력하세요
select count(*) as USERS
from USER_INFO
where AGE between 20 and 29
and to_char(JOINED, 'YYYY') = 2021;