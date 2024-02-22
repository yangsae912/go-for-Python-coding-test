-- 코드를 작성해주세요
select b.item_id, item_name, rarity 
from item_tree a
left join item_info b on a.item_id = b.item_id
where parent_item_id is not null 
and parent_item_id in (
    select item_id
    from item_info 
    where rarity = 'rare'
)
order by b.item_id desc