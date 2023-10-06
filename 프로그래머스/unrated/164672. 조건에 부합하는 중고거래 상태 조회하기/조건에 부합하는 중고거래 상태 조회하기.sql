-- 코드를 입력하세요
SELECT board_id, writer_id, title, price, 
    case
        when status = 'SALE' then '판매중'
        when status = 'DONE' then '거래완료'
        when status = 'RESERVED' then '예약중'
        
    end as status 
from USED_GOODS_BOARD
where to_char(created_date, 'YYYY-MM-DD') = '2022-10-05'
order by board_id desc