SELECT commission, nvl(commission, 0) from employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;

SELECT COUNT(*) FROM employee;

SELECT sum(salary) as"급여총액",
avg(salary) as"급여평균",
max(salary) as"최대급여",
min(salary) as"최소급여"
from employee;

select max(hiredate),
min(hiredate)
from employee;

SELECT SUM(COMMISSION) AS "커미션총액"
FROM EMPLOYEE;

SELECT COUNT(*) AS "사원의 수"
FROM EMPLOYEE;

SELECT COUNT(COMMISSION) AS"커미션 받는 사원수"
FROM EMPLOYEE;

SELECT COUNT(DISTINCT JOB) AS "직원 종류의 개수"
FROM EMPLOYEE;







