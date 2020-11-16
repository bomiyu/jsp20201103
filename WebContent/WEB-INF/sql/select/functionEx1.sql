SELECT* FROM DUAL;

select lower(ename) as name 
from employee;

SELECT UPPER(ename) a name from employee;
select initcap(ename) as name from employee;
select initcap('oracle name') as name from dual;


select 'Oracle mania',
UPPER('Oracle mania'),
LOWER('Oracle mania'),
INITCAP('Oracle mania')
from dual;


select ename, lower(ename), job, initcap(job)
from employee;

select eno, ename, dno
from employee
where LOWER(ename)='scott';

SELECT ENO, ENAME, DNO
FROM EMPLOYEE
WHERE INITCAP(ename)='Scott';

select length('OracleMania'), length('오라클매니아')
from dual;

select LENGTHB('OracleMania'), LENGTHB('OracleMania')
from dual;


select 'Oracle', 'mania', concat('Oracle','mania')
from dual;

select substr('OracleMania',4,3),
substr('OracleMania',-4,3)
from dual;

select *
from employee
where substr(ename, -1,1)='N';

SELECT *
FROM EMPLOYEE
WHERE SUBSTR(HIREDATE,1,2)='87';

SELECT INSTR('Oracle mania', 'a')
from dual;

select INSTR('Oracle mania', 'a', 5,2)
from dual;

select INSTR('오라클매니아','라'),
INSTRB('오라클매니아','라')
FROM DUAL;

SELECT * INSTR(ENAME, 'R', 3, 1)=3;


select RPAD(salary, 10,'*')
from employee;

select ' Oracle mania ',
LTRIM(' Oracle mania '),
RTRIM (' Oracle mania ')
FROM DUAL;


select 'Oracle mania',
TRIM('O' FROM 'Oracle mania')
from dual;

select TRIM(' Oracle mania '
