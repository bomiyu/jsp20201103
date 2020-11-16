SELECT ROUND(345.1456) FROM DUAL;

SELECT 98.7654,
        ROUND(98.7654),
        ROUND(98.7654,2),
        ROUND(98.7654,-1)
        FROM DUAL;
        
        SELECT 98.7654,
        TRUNC(98.7654),
        TRUNC(98.7654,2),
        TRUNC(98.7654,-1)
        FROM DUAL;
        
        SELECT MOD (31,2), 
        MOD(31,5),
        MOD(31,8)
        FROM DUAL;
        
        SELECT ENAME,SALARY,MOD(SALARY,500)
        FROM EMPLOYEE;
        