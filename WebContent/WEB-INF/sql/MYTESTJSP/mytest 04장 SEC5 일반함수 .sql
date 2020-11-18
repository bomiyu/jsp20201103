select ename, salary, commission,
NVL(commission,0),
salary*12+NVL(commission,0) --COMMISSION�� NULL�̸� 0���� ��ȯ������
from employee
order by job;

SELECT ENAME, SALARY, COMMISSION,
NVL2(COMMISSION, SALARY*12+COMMISSION,SALARY*12) --COMMISSION��  NULL�� ���  SALARY*12+COMMISSION �ƴҰ�� SALARY*12
FROM EMPLOYEE
ORDER BY JOB;

SELECT NULLIF('A','A'), NULLIF('A','B') -- �ΰ��� �� ���Ͽ� �����ϸ� null��� �ٸ��� ù°�� A���
FROM DUAL;

SELECT ename, salary, commission,
COALESCE(commission, salary,0) --3���� ���߿� null�� �ƴѰ�
from employee
order by job;

SELECT ENAME, DNO,
DECODE(DNO, 10, 'ACCOUNTING',
20, 'RESEARCH',
30, 'SALES',
40, 'OPERATIONS',
'DEFAULT') AS DNAME   -- ENAME, DNO, DNAME����Ұ� �ε� DNO�� 10 �ϰ�� 'ACCOUNTING', 20�� ��� RESEARCH ...������� DNAME�׸� �߰��� ���� NULL�̸� DEFAULT��� 
FROM EMPLOYEE
ORDER BY DNO;

SELECT ENAME, DNO,
CASE WHEN dno=10 then 'ACCOUNTING'
WHEN dno=20 then 'RESEARCH'
WHEN dno=30 then 'SALES'
WHEN dno=40 then 'OPERATIONS'
ELSE 'DEFAULT'
END AS DNAME  -- ���� DECODE�� ������� <ENAME, DNO, DNAME����Ұ� �ε� DNO�� 10 �ϰ�� 'ACCOUNTING', 20�� ��� RESEARCH ...������� DNAME�׸� �߰��� ���� NULL�̸� DEFAULT��� >
FROM EMPLOYEE
order by dno;



