-- 코드를 입력하세요
-- SELECT ins.animal_id, ins.animal_type, ins.name
-- FROM ANIMAL_INS INS
-- INNER JOIN ANIMAL_OUTS OUTS
-- ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
-- WHERE SEX_UPON_INTAKE LIKE '%Intact%'
-- and SEX_UPON_OUTCOME LIKE 'Neutered%'
-- or SEX_UPON_OUTCOME LIKE '%Spayed%'
-- order by 1,2,3

SELECT ins.animal_id, ins.animal_type, ins.name
FROM ANIMAL_INS INS
inner join (
    select *
    from ANIMAL_OUTS 
    where SEX_UPON_OUTCOME LIKE 'Neutered%'
    or SEX_UPON_OUTCOME LIKE '%Spayed%'
) OUTS on INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE SEX_UPON_INTAKE LIKE '%Intact%'
order by 1,2
-- SELECT t1.column1, t2.column2
-- FROM table1 t1
-- JOIN (
--     SELECT column2
--     FROM table2
--     WHERE some_condition
-- ) t2 ON t1.join_column = t2.column2;
