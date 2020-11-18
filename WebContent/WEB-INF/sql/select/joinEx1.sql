 SELECT * FROM EMPLOYEE;
 SELECT * FROM DEPARTMENT;
 
 SELECT * FROM EMPLOYEE, DEPARTMENT
 WHERE EMPLOYEE.DNO = DEPARTMENT.DNO;
 
 SELECT ENO, ENAME, DNAME
 FROM EMPLOYEE, DEPARTMENT
 WHERE EMPLOYEE.DNO = DEPARTMENT.DNO
 AND ENO = 7788;
 
 
 SELECT ENO,ENAME,DNAME, DNO --¿À·ù
 FROM EMPLOYEE,DEPARTMENT
 WHERE EMPLOYEE.DNO=DEPARTMENT.DMO
 AND ENO =7788;
 
 SELECT EMPLOYEE.ENO, EMPLOYEE.ENAME, DEPARTMENT.DNAME, EMPLOYEE.DNO
 FROM EMPLOYEE, DEPARTMENT
 WHERE EMPLOYEE.DNO =DEPARTMENT.DNO
 AND EMPLOYEE.ENO=7788;
 
SELECT E.ENO, E.ENAME, D.DNAME, E.DNO
FROM EMPLOYEE E, department D
WHERE E.DNO = D.DNO
AND E.ENO =7788;

SELECT E.ENAME, E.DNO, D.DNAME 
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DNO = D.DNO
AND ENAME='SCOTT';


select e.eno, e.ename, d.dname, dno
from employee e natural join department d
where e.eno=7788;

select e.eno, e.ename, d.dname, dno
from employee e join department d
using(dno)
where e.eno=7788;

select e.eno, e.ename, d.dname, e.dno
from employee e join department d
on e.dno= d.dno
where e.eno=7788;

select* from employee join department using (dno);
select* from employee e join department d on e.dno=d.dno; 


select ename, dname, loc 
from employee e join department d
on e.dno= d.dno;

select dno,job,loc
from employee inner join department
using(dno)
where dno=10;

select ename, dname, loc
from employee natural join department
where commission>0;

select e.ename, d.dname
from employee e, department d
where e.dno= d.dno
and e.ename like '%A%';

SELECT ENAME,JOB,DNO,DNAME
FROM EMPLOYEE NATURAL JOIN DEPARTMENT
WHERE LOC='NEW YORK';

SELECT EMP.ENAME AS "EMPLOYEE",
EMP.MANAGER AS "Emp#",
mgr.eno as "Manager",
mgr.ename as "Mgr#"
from employee emp, employee mgr
where emp.manager = mgr.eno;
