-- 코드를 입력하세요
select a.apnt_no, p.pt_name, a.pt_no, d.mcdp_cd, d.dr_name, a.apnt_ymd
from appointment a 
inner join patient p on a.pt_no = p.pt_no 
inner join doctor d  on a.mddr_id = d.dr_id
where to_char(a.apnt_ymd, 'YYYY-MM-DD') = '2022-04-13'
and a.apnt_cncl_yn = 'N'
and a.mcdp_cd ='CS'
order by a.apnt_ymd asc
-- SELECT A.APNT_NO, P.PT_NAME, A.PT_NO, D.MCDP_CD, D.DR_NAME, A.APNT_YMD
-- FROM APPOINTMENT A
-- INNER JOIN PATIENT P ON A.PT_NO = P.PT_NO 
-- INNER JOIN DOCTOR  D ON A.MDDR_ID = D.DR_ID
-- WHERE to_char(A.APNT_YMD,'YYYY-MM-DD') = '2022-04-13' 
-- AND A.APNT_CNCL_YN = 'N'
-- AND A.MCDP_CD = 'CS'
-- ORDER BY APNT_YMD ASC