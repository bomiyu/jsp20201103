
SELECT SUM(SALARY) AS"�޿��Ѿ�",
AVG(SALARY) AS"�޿����",
MAX(SALARY) AS"�ִ�޿�",
MIN(SALARY) AS "�ּұ޿�"
FROM EMPLOYEE;

SELECT MAX(HIREDATE),--�ֱ�/ ���� �Ի籸�ϱ� 
MIN(HIREDATE)
FROM EMPLOYEE;

SELECT SUM(COMMISSION) AS"Ŀ�̼� �Ѿ�"
FROM EMPLOYEE;

SELECT COUNT(*) AS"����� ��" --NULL������ ������� ����
FROM EMPLOYEE;

SELECT COUNT(COMMISSION) AS"Ŀ�̼� �޴»����"
FROM EMPLOYEE;

SELECT COUNT(DISTINCT JOB) AS"���������� ����" --JOB�ߺ����� 
 FROM EMPLOYEE;
 
 SELECT ENAME, MAX(SALARY) -- �׷��Լ��ƴѰ��� ���� ��Ű�� ����ERROR
 FROM EMPLOYEE;
 
 SELECT DNO AS"�μ���ȣ", AVG(SALARY) AS"�޿����"--�Ҽ� �μ��� ��� �޿��� �μ���ȣ�� �Բ� ��� 
 FROM EMPLOYEE
 GROUP BY DNO;
 
 SELECT avg(salary) as"�޿����" --�Ҽ� �μ��� ��ձ޿� ���ϱ�
 from employee
 group by dno;
 
 SELECT DNO, ENAME, AVG(SALARY) -- SELECT���� ENAME�� GROUP BY���� ��ð� ���� �ʾ����Ƿ� ���� ERROR
 FROM EMPLOYEE
 GROUP BY DNO;
 
 SELECT DNO, JOB, COUNT(*), SUM(SALARY)--����Į���� �̿��Ͽ� �׷캰�� �˻��ϱ�
 FROM EMPLOYEE
 GROUP BY DNO,JOB
 ORDER BY DNO, JOB;
 
 SELECT DNO,MAX(SALARY) --�μ��� �޿� �Ѿ��� 3000�̻��� �μ��� ��ȣ�� �μ��� �޿� �Ѿ� ���ϱ�
 FROM EMPLOYEE
 GROUP BY DNO
 HAVING MAX(SALARY) >= 3000;
 
 SELECT JOB,COUNT(*),SUM(SALARY)-- ���� , COUNT SUM ��� / MANAGER �ƴ� /�޿��Ѿ� �� 5000�̻��� 
 FROM EMPLOYEE
 WHERE JOB NOT LIKE '%MANAGER%'
 GROUP BY JOB
 HAVING SUM(SALARY) >= 5000
 ORDER BY SUM(SALARY);
 
SELECT MAX(AVG(SALARY))-- �ְ�޿� ����ϱ�
FROM EMPLOYEE
GROUP BY DNO;
 
 
 
 
 
 