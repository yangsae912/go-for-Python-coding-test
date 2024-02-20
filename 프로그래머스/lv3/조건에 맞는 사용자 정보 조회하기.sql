

select 
    USER_ID,
    NICKNAME,
    city || ' ' || STREET_ADDRESS1 || ' ' || STREET_ADDRESS2  as 전체주소,
    SUBSTR(tlno, 1, 3) || '-' || SUBSTR(tlno, 4, 4) || '-' || SUBSTR(tlno, 8, 4) AS 전화번호

  -- concat() 함수도 가능 
from 
    USED_GOODS_USER
where user_id in (select 
    WRITER_ID
from 
    USED_GOODS_BOARD 
group by 
    WRITER_ID
having count(*) >= 3 )
order by USER_ID desc
