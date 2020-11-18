 SELECT * FROM EMPLOYEE;
 SELECT MAX(salary) FROM employee;
 
 SELECT DNO AS "부서번호",
 AVG(SALARY) AS "급여평균"
 FROM EMPLOYEE
 GROUP BY DNO;
 
 SELECT JOB AS "직업", AVG(SALARY) AS "급여 평균"
 FROM EMPLOYEE
 GROUP BY JOB;
 
 SELECT DNO, ENAME, AVG(SALARY)
 FROM EMPLOYEE
GROUP BY DNO;

SELECT DNO,JOB, COUNT(*), SUM(SALARY)
FROM EMPLOYEE
GROUP BY DNO,JOB
ORDER BY DNO,JOB;

select dno, max(salary)
from employee
group by dno
having max(salary) >= 3000;

select job,COUNT(*), sum(salary)
from employee
where job not like '%MANAGER%'
GROUP BY JOB
HAVING SUM(SALARY) >= 5000
ORDER BY SUM(SALARY);

SELECT MAX(AVG(SALARY))
FROM EMPLOYEE
GROUP BY DNO;

--혼자해보기
SELECT MAX(SALARY) AS"MAXIMUM",
MIN(SALARY) AS "MINIMUM",
SUM(SALARY) AS "SUM",
ROUND(AVG(SALARY)) AS "AVERAGE"
FROM EMPLOYEE;

SELECT JOB AS "JOB",
MAX(SALARY) AS "Maximum",
MIN(SALARY) AS "Minimum",
SUM(SALARY) AS "SUM",
ROUND(AVG(SALARY)) AS "Average"
FROM EMPLOYEE
GROUP BY JOB;

SELECT JOB, COUNT(*)
FROM EMPLOYEE
GROUP BY JOB;


SELECT COUNT(MANAGER)
FROM employee;

SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE
FROM EMPLOYEE;

SELECT MIN(SALARY) 
FROM EMPLOYEE
GROUP BY JOB
HAVING NOT MIN(SALARY)<2000
ORDER BY MIN(SALARY) DESC;

SELECT DNO, COUNT(*) AS "Number Of People" , round(avg(salary),2) as "Salary"
from employee
group by dno
order by dno asc;

SELECT DECODE(DNO, 10, 'ACCOUNTING', 20, 'RESEARCH',30, 'SALES',40, 'OPERATIONS')AS "DNAME",
DECODE(DNO, 10, 'NEW YORK', 20,'DALLAS', 30, 'CHICAGO',40,'BOSTON') AS "Location",
count(*) as "Number of People",
round(avg(salary)) as "Salary"
from employee
group by dno;


select job, dno,
decode(dno, 10, sum(salary)) as "부서 10",
decode(dno, 20, sum(salary)) as "부서 20",
decode(dno, 30, sum(salary)) as " 부서 30",
sum(salary) as"총액"
from employee
group by job, dno
order by dno;

