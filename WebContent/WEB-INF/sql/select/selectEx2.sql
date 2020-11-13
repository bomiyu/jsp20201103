select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 2000;
SELECT * FROM employee WHERE ename <= 'G';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate='1981/02/20';
--SELECT * FROM employee WHERE hiredate='81/02/20';


SELECT * FROM employee
WHERE hiredate >= '1981/01/01' AND salary > 3000; --둘다 조건만족

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' OR salary > 3000; --둘중 하나만족

SELECT * FROM employee
WHERE NOT salary > 3000; --조건이 아닌사람

SELECT * FROM employee
WHERE ename > 'G' AND salary > 2000 AND dno <> 30;


select * from employee
where dno=10 and job='MANAGER';

select * from employee
where dno=10 or job='MANAGER';

select * from employee
where not dno=10;

select * from employee
where dno <> 10;

select * from employee
where salary>=1000 and salary <=1500;


select * from employee
where salary<1000 or salary> 1500;

select * from employee
where commission=300 or commission=500 or commission=1400;

SELECT * FROM employee
where salary >= 3000 AND salary <= 5000;

SELECT * FROM employee
where salary BETWEEN 3000 AND 5000;

SELECT * FROM employee
where hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
where salary <3000 OR salary >5000;

SELECT * FROM employee
where salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee
where dno = 10 or dno =20;

select * from employee
where dno IN(10,20);

SELECT
*
FROM employee
where dno NOT IN (20);





SELECT * FROM department;

SELECT loc FROM department WHERE dno = 0;

SELECT loc FROM department WHERE dno = 10;