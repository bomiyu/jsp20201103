 select employees.ename as "사원이름", manager.ename as "직속상관이름"
 from employee employees, employee manager
 where employees.manager=manager.eno;
 
 select employees.ename ||'의 직속 상관은'|| manager.ename
 from employee employees join employee manager
 on employees.manager= manager.eno;
 
 