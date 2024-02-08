-- -- 코드를 입력하세요
select '/home/grep/src/' || a.board_id ||'/'|| file_id || file_name || file_ext as file_path
from USED_GOODS_FILE a 
left join USED_GOODS_BOARD b on a.board_id = b.board_id
where views =  
    (
        select max(VIEWS)
        from USED_GOODS_BOARD
        
    )
order by file_id desc
