-- 코드를 입력하세요
SELECT mcdp_cd as "진료과코드", count(*) as "5월예약건수"
from APPOINTMENT
where to_char(apnt_ymd, 'YYYY-MM') = '2022-05'
-- and APNT_CNCL_YN = 'N'
group by mcdp_cd
order by "5월예약건수", "진료과코드"
