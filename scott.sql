
-- 가장 많이 발생한 암 종류를 암종, 발생자수 출력
SELECT 암종,발생자수 
FROM CANCER
WHERE 발생자수 
= (SELECT MAX(발생자수) 
FROM CANCER 
WHERE 암종 
NOT IN ('모든암(C00-C96)'));

-- 가장 많이 발생한 암 종류 1~ 5위까지 자료 출력
SELECT 암종, 발생자수, 분율, 조발생률, 연령표준화발생률, rownum
FROM (
select * from cancer WHERE 암종 
NOT IN ('모든암(C00-C96)') order by 발생자수 desc)
where rownum<6;


--분율이 10%이상인 자료출력
select *
from cancer
where 분율>=10 and 암종 not in '모든암(C00-C96)' ;


-- 백혈병의 발생자수를 출력하시오
select 암종, 발생자수
from cancer
where 암종 like '백혈병%';
