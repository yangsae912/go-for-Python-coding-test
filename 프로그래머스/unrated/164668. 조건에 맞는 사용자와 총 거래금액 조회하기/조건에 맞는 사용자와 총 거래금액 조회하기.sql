-- -- 코드를 입력하세요
-- SELECT user_id, nickname, sum(gb.price) as total_sales
-- from used_goods_user gu
-- inner join used_goods_board gb
-- on gu.user_id = gb.writer_id
-- group by user_id, nickname
-- -- having  sum(gb.price) >= 700000
-- -- order by total_sales 

SELECT user_id, nickname, sum(gb.price) as total_sales
from used_goods_user gu
inner join used_goods_board gb
on gu.user_id = gb.writer_id
where gb.status = 'DONE'
group by user_id,nickname
having sum(gb.price) >= 700000
order by total_sales

