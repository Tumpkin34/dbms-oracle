/*VIEW*/

/*PLAYER 테이블에 나이 컬럼 추가한 뷰 만들기*/
/*CEIL : 소수점을 전부 올려 정수로 만듬*/
SELECT P.*, CEIL((SYSDATE - BIRTH_DATE) / 365) AGE FROM PLAYER P;

CREATE VIEW VIEW_PLAYER
AS 
(
   SELECT P.*, CEIL((SYSDATE - BIRTH_DATE) / 365) AGE FROM PLAYER P
);

SELECT * FROM VIEW_PLAYER;

/*EMPLOYEES 테이블에서 사원 이름과 그 사원의 매니저 이름이 있는 VIEW 만들기*/
SELECT * FROM EMPLOYEES;
CREATE VIEW VIEW_EMPLOYEES AS
(
   SELECT 
   E1.EMPLOYEE_ID, E1.LAST_NAME || ' ' || E1.FIRST_NAME EMPLOYEE_NAME,
   E2.LAST_NAME || ' ' || E2.FIRST_NAME MANAGER_NAME, E1.JOB_ID, E1.DEPARTMENT_ID
   FROM EMPLOYEES E1 JOIN EMPLOYEES E2
   ON E1.MANAGER_ID = E2.EMPLOYEE_ID 
);

SELECT * FROM 
EMPLOYEES E1 JOIN EMPLOYEES E2
ON E1.MANAGER_ID = E2.EMPLOYEE_ID;
SELECT * FROM VIEW_EMPLOYEES;
DROP VIEW VIEW_EMPLOYEES;

/*PLAYER 테이블에서 TEAM_NAME 컬럼을 추가한 VIEW 만들기*/
CREATE VIEW VIEW_TEAM AS
(
   SELECT P.*, T.TEAM_NAME FROM PLAYER P JOIN TEAM T
   ON P.TEAM_ID = T.TEAM_ID
);

/*ROWNUM 어디서든 사용 할 수 있고 1부터 순서대로 숫자를 붙혀준다.*/
SELECT ROWNUM, PLAYER_NAME, TEAM_NAME FROM VIEW_TEAM;

SELECT * FROM TBL_USER;

