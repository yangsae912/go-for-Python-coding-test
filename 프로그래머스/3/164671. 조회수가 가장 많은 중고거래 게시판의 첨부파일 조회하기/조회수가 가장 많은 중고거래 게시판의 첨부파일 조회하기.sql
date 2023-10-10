-- 코드를 입력하세요
-- SELECT '/home/grep/src/'||f.board_id|| '/'|| file_id || file_ext AS FILE_PATH
-- from used_goods_board b
-- inner join used_goods_file f 
-- on b.board_id = f.board_id
-- order by views desc , file_id
-- fetch first 1 rows only
-- -- order by file_id desc


select '/home/grep/src/'||board_id|| '/'|| file_id ||file_name || file_ext  AS FILE_PATH
from used_goods_file
where board_id = (select board_id
from USED_GOODS_BOARD
order by views desc
fetch first 1 rows only)
order by file_id desc
