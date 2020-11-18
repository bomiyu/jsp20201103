select ename, salary, commission,
NVL(commission,0),
salary*12+NVL(commission,0) --COMMISSION이 NULL이면 0으로 변환시켜줌
from employee
order by job;

SELECT ENAME, SALARY, COMMISSION,
NVL2(COMMISSION, SALARY*12+COMMISSION,SALARY*12) --COMMISSION이  NULL일 경우  SALARY*12+COMMISSION 아닐경우 SALARY*12
FROM EMPLOYEE
ORDER BY JOB;

SELECT NULLIF('A','A'), NULLIF('A','B') -- 두개의 값 비교하여 동일하면 null출력 다르면 첫째값 A출력
FROM DUAL;

SELECT ename, salary, commission,
COALESCE(commission, salary,0) --3개의 값중에 null이 아닌값
from employee
order by job;

SELECT ENAME, DNO,
DECODE(DNO, 10, 'ACCOUNTING',
20, 'RESEARCH',
30, 'SALES',
40, 'OPERATIONS',
'DEFAULT') AS DNAME   -- ENAME, DNO, DNAME출력할것 인데 DNO가 10 일경우 'ACCOUNTING', 20일 경우 RESEARCH ...등등으로 DNAME항목에 추가됨 값이 NULL이면 DEFAULT출력 
FROM EMPLOYEE
ORDER BY DNO;

SELECT ENAME, DNO,
CASE WHEN dno=10 then 'ACCOUNTING'
WHEN dno=20 then 'RESEARCH'
WHEN dno=30 then 'SALES'
WHEN dno=40 then 'OPERATIONS'
ELSE 'DEFAULT'
END AS DNAME  -- 위의 DECODE와 결과같음 <ENAME, DNO, DNAME출력할것 인데 DNO가 10 일경우 'ACCOUNTING', 20일 경우 RESEARCH ...등등으로 DNAME항목에 추가됨 값이 NULL이면 DEFAULT출력 >
FROM EMPLOYEE
order by dno;



