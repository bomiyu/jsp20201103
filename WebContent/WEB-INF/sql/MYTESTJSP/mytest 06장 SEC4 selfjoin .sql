 select employees.ename as "����̸�", manager.ename as "���ӻ���̸�"
 from employee employees, employee manager
 where employees.manager=manager.eno;
 
 select employees.ename ||'�� ���� �����'|| manager.ename
 from employee employees join employee manager
 on employees.manager= manager.eno;
 
 