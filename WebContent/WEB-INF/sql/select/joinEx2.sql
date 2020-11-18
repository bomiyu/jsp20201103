 
 select * from employee;
 select * from salgrade;
 
 select * from employee e, salgrade s
 where e.salary between s.losal and s.hisal;
 
 select * from salgrade;
 
 select ename, salary, grade
 from employee, salgrade
 where salary between losal and hisal;
 
 select e.ename, d.dname, e.salary, s.grade
 from employee e, department d, salgrade s
 where e.dno=d.dno
 and salary between losal and hisal;
 
 select e.ename from employee e, salgrade s
 where e.salary between s.losal and s.hisal
 and s.grade =1;