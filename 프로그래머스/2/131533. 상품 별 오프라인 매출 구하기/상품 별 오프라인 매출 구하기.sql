-- 코드를 입력하세요
SELECT product.product_code, sum(sale.sales_amount * product.price) as sales
from product 
inner join offline_sale sale 
on product.product_id = sale.product_id
group by product.product_code
order by 2 desc, 1 asc