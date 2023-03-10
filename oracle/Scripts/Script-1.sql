/*PLAYER 테이블에 나이 컬럼 추가한 뷰 만들기*/

CREATE VIEW VIEW_PLAYER2 AS(
	SELECT P.*, CEIL((SYSDATE - BIRTH_DATE)/365) AGE FROM PLAYER P
);

SELECT * FROM VIEW_PLAYER2;

/*EMPLOYEES 테이블에서 사원 이름과 그 사원의 매니저 이름이 있는 VIEW 만들기*/
SELECT * FROM EMPLOYEES;
CREATE VIEW VIEW_EMP AS(
	SELECT E1.EMPLOYEE_ID,E1.LAST_NAME || ' ' || E1.FIRST_NAME "사원 이름", 
	E2.MANAGER_ID , E2.LAST_NAME || ' ' || E2.FIRST_NAME "매니저 이름" FROM 
	EMPLOYEES E1 JOIN EMPLOYEES E2
	ON E1.EMPLOYEE_ID = E2.MANAGER_ID
);

DROP VIEW VIEW_EMP;
SELECT * FROM VIEW_EMP;

SELECT E1.* FROM 
EMPLOYEES E1 JOIN EMPLOYEES E2
ON E1.EMPLOYEE_ID = E2.MANAGER_ID;

SELECT * FROM EMPLOYEES;