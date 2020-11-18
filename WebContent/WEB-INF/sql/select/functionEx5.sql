 SELECT * FROM employee;
 select ename,salary , commission, salary + commission as sum
 FROM employee;
 SELECT ename, commission, NVL(commission, 0) FROM employee;
 
 select ename, salary, commission, NVL(commission, 0), salary*12+NVL(commission,0)
 from employee
 order by job;
 
 SELECT ename, commission, NVL2(commission, commission, 0)
 FROM employee;
 
 SELECT ename, salary, commission, NVL2(commission, salary*12+commission, salary*12)
 from employee
 order by job;
 
 SELECT nullif('a','a') from dual;
 SELECT nullif('a','b') from dual;
 
 SELECT COALESCE('a','b',null,'c') FROM dual;


SELECT ename, salary, commission,
COALESCE(commission, salary,0)
from employee
order by job;

SELECT ename, dno, DECODE(dno, 10, 'ACC', 20, 'RES', 'DEF')
FROM employee;
 
 
 SELECT ename, dno,
 DECODE(dno, 10, 'ACCOUNTING',
 20,'RESEARCH',
 30,'SALES',
 40, 'OPERATIONS',
 'DEFAULT') AS DNAME
 from employee
 order by dno;
 
 SELECT ename, dno,
 CASE WHEN dno=10 THEN 'ACCOUNTING'
 WHEN dno=20 THEN 'RESEARCH'
 WHEN dno=30 THEN 'SALES'
 WHEN dno=40 THEN 'OPERATIONS'
ELSE 'DEFAULT'
 END As dname
 from employee
 order by dno;
 
 SELECT ENO,ENAME,
 NVL(MANAGER,0) AS MANAGER from employee;
 
 SELECT ENO,ENAME,JOB,SALARY,
 DECODE(JOB,'ANALYST',salary+200,
 'SALESMAN', salary+180,
 'MANAGER', salary+150,
 'CLERK',salary+100,
 salary) as update_salary
 from employee;
 
 
 