-- 코드를 입력하세요
SELECT PT_NAME, PT_NO, GEND_CD, AGE, nvl(tlno, 'NONE') as TLNO
from patient
where AGE between 0 and 12
and GEND_CD = 'W'
order by AGE desc, PT_NAME asc