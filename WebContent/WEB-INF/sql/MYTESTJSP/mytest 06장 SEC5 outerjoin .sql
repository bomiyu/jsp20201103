 select employees.ename || '�� ���� �����' || manager.ename
 from employee employees join employee manager
 on employees.manager =manager.eno(+);
 
 select employees.ename || '�� ���� �����'|| manager.ename
 from employee employees join employee manager
 on employees.manager = manager.eno(+);
 
 
 select employees.ename ||'�� ���ӻ����'|| manager.ename
 from employee employees join employee manager
 on employees.manager= manager.eno(+);
 
 
 select employees.ename || '�� ���ӻ����'|| manager.ename
 from employee employees left outer join employee manager
 on employees.manager= manager.eno;
 
 select employees.ename || '�� ���ӻ����' || manager.ename
 from employee employees left outer join employee manager
 on employees.manager = manager.eno;
 
 --ȥ���غ���05~
 select e.ename, d.dname
 from employee e, department d
 where e.dno=d.dno
 and e.ename like '%A%';
 
 select ename,job, dno, dname
 from employee natural join department
 where loc='NEW YORK';
 
 SELECT emp.ename as"Employee",
 emp.manager as"Emp#",
 mgr.eno as"Manager",
 mgr.ename as"Mgr#"
 from employee emp, employee mgr
 where emp.manager = mgr.eno;