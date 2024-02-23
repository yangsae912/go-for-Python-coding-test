-- 코드를 작성해주세요
SELECT 
    CASE WHEN SKILL_1 = 'Python' then id 
    when skill_2 = 'Python' then id 
    when skill_3 = 'Python' then id 
    else null 
    end as id,
    email,
    first_name,
    last_name
from 
    DEVELOPER_INFOS
having 
    id is not null
order by 
    id asc