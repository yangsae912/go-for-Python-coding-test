SELECT NAME as NAME, count(*) as COUNT
from ANIMAL_INS
where NAME is not NULL
group by NAME
having count(*) > 1 
order by NAME