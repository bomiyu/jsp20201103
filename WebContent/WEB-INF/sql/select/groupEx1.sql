SELECT commission, nvl(commission, 0) from employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;

SELECT COUNT(*) FROM employee;

SELECT sum(salary) as"�޿��Ѿ�",
avg(salary) as"�޿����",
max(salary) as"�ִ�޿�",
min(salary) as"�ּұ޿�"
from employee;

select max(hiredate),
min(hiredate)
from employee;

SELECT SUM(COMMISSION) AS "Ŀ�̼��Ѿ�"
FROM EMPLOYEE;

SELECT COUNT(*) AS "����� ��"
FROM EMPLOYEE;

SELECT COUNT(COMMISSION) AS"Ŀ�̼� �޴� �����"
FROM EMPLOYEE;

SELECT COUNT(DISTINCT JOB) AS "���� ������ ����"
FROM EMPLOYEE;







