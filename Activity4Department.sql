CREATE TABLE IF NOT EXISTS DEPARTMENT(
    ID INTEGER,
    NAME TEXT,
    D_ID TEXT,
    M_ID TEXT,
    SALARY REAL);
DELETE FROM DEPARTMENT;
INSERT INTO DEPARTMENT(ID,NAME,D_ID,M_ID,SALARY) VALUES
(101, "JOHN", "90", "101", 24000),
(102, "SUSAN", "90", "102", 24500),
(103, "AARON", "100", "101", 23500),
(104, "JACOB", "110", "103", 25000),
(105, "JOSH", "100", "103", 24500);

SELECT D_ID AS "DEPARTMENT_CODE", COUNT(*) AS "NUMBER_OF_EMPLOYEES" FROM DEPARTMENT GROUP BY D_ID;

SELECT D_ID, SUM(SALARY) FROM DEPARTMENT GROUP BY D_ID;
--3)Write a query that displays the number of employees, total salary paid to employees working in each department. 
SELECT D_ID, COUNT(*) AS "NUMBER_OF_EMPLOYEES", SUM(SALARY) AS "TOTAL_SALARY" FROM DEPARTMENT GROUP BY D_ID;
--4)Write a query that displays the department code, total salary paid to employees group by department_id and manager_id=103. 
SELECT D_ID AS "DEPARTMENT_CODE", SUM(SALARY) AS "TOTAL_SALARY" FROM DEPARTMENT WHERE M_ID="103" GROUP BY D_ID;
--5)Write a query that displays the department id, number of employees of those groups that have more than 2 employees
SELECT D_ID, COUNT(*) AS "NUMBER_OF_EMPLOYEES" FROM DEPARTMENT GROUP BY D_ID HAVING COUNT(*)>1;
