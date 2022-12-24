/*PLAYER 테이블에서 TEMA_ID가 'K01'인 선수 검색*/
SELECT * FROM PLAYER /*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE TEAM_ID = 'K01';/*팀아이디가 K01인(=)*/

/*PLAYER 테이블에서 TEAM_ID가 'K01'이 아닌 선수 검색*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE TEAM_ID <> 'K01';/*팀아이디가 K01이 아닌(<>) */

/*PLAYER 테이블에서 WEIGHT가 70이상이고 80이하인 선수 검색*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE WEIGHT >= 70 AND WEIGHT <= 80;/* WEIGHT가 70이상(>=)이고(and) 80이하(<=)인*/
/*다른 방법 BETWEEN*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE WEIGHT BETWEEN 70 AND 80;/*메소드 느낌 70,80매개변수 느낌 형식이 BETWEEN 숫자 AND 숫자(이상, 이하값 찾기)*/

/*PLAYER 테이블에서 TEAM_ID가 'K03'이고 HEIGHT가 180미만인 선수 검색*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE TEAM_ID = 'K03' AND HEIGHT < 180;/* TEAM_ID가 'K03'이고 HEIGHT가 180미만인*/

/*PLAYER 테이블에서 TEAM_ID가 'K06'이고 NICKNAME이 '제리'인 선수 검색*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE TEAM_ID = 'K06' AND NICKNAME = '제리';/*TEAM_ID가 'K06'이고 NICKNAME이 '제리'인*/

/*PLAYER 테이블에서 HEIGHT가 170이상이고 WEIGHT가 80이상인 선수 이름 검색*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE HEIGHT >= 170 AND WEIGHT >= 80;/*HEIGHT가 170이상이고 WEIGHT가 80이상인*/

/*STADIUM 테이블에서 SEAT_COUNT가 30000 초과이고 41000이하인 경기장 검색*/
SELECT * FROM STADIUM /*모든 정보(*) 가져오기(select) STADIUM테이블에서 (from STADIUM) */
WHERE SEAT_COUNT > 30000 AND SEAT_COUNT <= 41000;/*SEAT_COUNT가 30000 초과(>)이고 41000이하(<=)인*/

/*PLAYER 테이블에서 TEAM_ID가 'K02'이거나 'K07'이고 포지션은 'MF'인 선수 검색*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
/*컬럼명이 키워드인 경우 ""로 감싸면 컬럼으로 사용가능*/
WHERE (TEAM_ID = 'K02' OR TEAM_ID = 'K07') AND "POSITION" = 'MF';/*(TEAM_ID가 'K02'이거나(OR) 'K07')이고(AND) 포지션은 'MF'인*/
/*또다른 방법 IN*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE TEAM_ID IN('K02', 'K07') AND "POSITION" = 'MF';/*TEAM_ID가 IN(여기에 해당하는 값)이고 포지션은 'MF'인*/

/*PLAYER 테이블에서 TEAM_ID가 'K01'인 선수 이름을 내 이름으로 바꾸기*/
UPDATE PLAYER/*player테이블을 업데이트 하겠다*/
SET PLAYER_NAME = '황지수'/*player_name 을 황지수로*/
WHERE TEAM_ID = 'K01';/*팀아이디가 K01인 선수를*/
/*player테이블에 팀아이디가 K01인 선수의 player_name을 황지수로 수정하겠다*/

SELECT * FROM PLAYER/*확인 용도로 쓰임*/
WHERE TEAM_ID = 'K01';

/*PLAYER 테이블에서 POSITION이 'MF'인 선수 삭제하기*/
DELETE FROM PLAYER/*삭제한다 player테이블의 */
WHERE "POSITION" = 'MF';/*MF라는 POSITION을 가진 선수를*/

SELECT * FROM PLAYER/*확인 용도*/
WHERE "POSITION" = 'MF';

/*PLAYER 테이블에서 HEIGHT가 180이상인 선수 삭제하기*/
DELETE FROM PLAYER/*삭제한다 player테이블에*/
WHERE HEIGHT >= 180;/*HEIGHT가 180이상인 선수*/

SELECT * FROM PLAYER/*확인 용도*/
WHERE HEIGHT >= 180;

COMMIT;/*저장*/
ROLLBACK;/*마지막 저장으로 되돌리기*/

/*NULL*/
/*PLAYER 테이블에서 NICKNAME이 NULL인 선수 검색*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE NICKNAME IS NULL;/*NICKNAME이 NULL인(NULL은 = 로 쓰지 않고 IS를 쓴다*/

/*PLAYER 테이블에서 POSITION이 NULL인 선수 검색*/
SELECT * FROM PLAYER/*모든 정보(*) 가져오기(select) player테이블에서 (from player) */
WHERE "POSITION" IS NULL;/*POSITION이 NULL인*/

/*PLAYER 테이블에서 NICKNAME이 NULL인 선수를 '없음'으로 변경 후 검색*/
SELECT PLAYER_NAME, NVL(NICKNAME, '없음') FROM PLAYER;/*player테이블에서 player_name과 nickname을 조회하는데 nickname이 null일 경우 없음으로 나타낸다(NVL(NICKNAME, '없음') */

/*PLAYER 테이블에서 POSITION이 NULL인 선수를 '미정'으로 변경 후 검색*/
SELECT PLAYER_NAME, NVL("POSITION", '미정') FROM PLAYER;/*player테이블에서 player_name과 POSITION 조회하는데 POSITION null일 경우 없음으로 나타낸다(NVL(POSITION, '미정') */

/*PLAYER 테이블에서 NATION이 등록되어 있으면 '등록', 아니면 '미등록'으로 검색*/
SELECT PLAYER_NAME, NVL2(NATION, '등록', '미등록') FROM PLAYER;/*PLAYER 테이블에서 NATION이 등록되어 있으면 '등록', 아니면 '미등록'으로(NVL2(NATION,'값이 있을떄','없을 때)*/

/*AS(ALIAS) : 별칭f
 * SELECT : 컬럼명 뒤에 AS 또는 한 칸 띄어쓰고 작성한다.
 * */

/*선수 이름과 생일 조회*/
SELECT PLAYER_NAME "선수 이름", BIRTH_DATE AS 생일  FROM PLAYER;/*PLAYER_NAME컬럼명을 "선수이름"으로 BIRTH_DATE를 생일로 보여준다.*/

/*PLAYER 테이블에서 BACK_NO를 "등 번호"로, NICKNAME을 "선수 별명"으로 변경하여 검색*/
SELECT BACK_NO "등 번호", NICKNAME AS "선수 별명" FROM PLAYER;/*BACK_NO을 등번호로 NICKNAME을 선수 별명으로 보여준다.*/

/*
 *PLAYER 테이블에서 BACK_NO를 "등 번호"로, NICKNAME을 "선수 별명"으로 변경하여 검색
 *NICKNAME이 NULL일 경우 없음으로 변경
 *   */
SELECT BACK_NO "등 번호", NVL(NICKNAME, '없음') AS "선수 별명" FROM PLAYER;/*BACK_NO을 등 번호로 NICKNAME은 선수 별명으로 보여주는데 값이 null일 경우 없음으로 보여줌*/

/*CONCATENATION : 연결, ||
 *  - JAVA에서 +와 동일하다.
 * */

SELECT PLAYER_NAME || '의 별명은' || NICKNAME || '이다.' AS 자기소개 FROM PLAYER;/*||를 사용해 연결*/

/*누구누구의 영어이름은 머머입니다.*/
SELECT PLAYER_NAME || '의 영어이름은 ' || E_PLAYER_NAME || NVL2(E_PLAYER_NAME, '입니다.', '없습니다.') 자기소개 
FROM PLAYER;/*위와 같음*/

/*누구누구의 포지션은 머머입니다.*/
SELECT PLAYER_NAME || '의 포지션은 ' || NVL("POSITION", '미정') || '입니다.' FROM PLAYER;/*위와 같은데 포지션이 없을 경우 미정으로 출력*/

/*LIKE : 포함된 문자열 값을 찾구, 문자의 개수도 제한을 줄 수 있다.
 * 
 * [컬럼명] LIKE '';
 * 
 * % : 모든 것
 * _ : 글자 수
 * 
 * 예)
 * '%A' : A로 끝나는 모든 값 (FDSFDSFDSA, 21FDSA,..)
 * 'A%' : A로 시작하는 모든 값(ADSFS, A2194MD,..)
 * '%A%' : A가 포함된 모든 값(FDSAFDS, ADFSF, FDSFSDA,..)
 * 'A__' : A로 시작하며 3글자인 값(ABC, ADD, APP,..)
 * '_A' : A로 끝나며 2글자인 값(BA, CA, ...)
 * */

/*'천마'로 끝나는 팀 이름 찾기*/
SELECT * FROM TEAM
WHERE TEAM_NAME LIKE '%천마';

/*PLAYER 테이블에서 김씨 찾기*/
SELECT * FROM PLAYER
WHERE PLAYER_NAME LIKE '김%';

/*PLAYER 테이블에서 김씨 두 자 찾기*/
SELECT * FROM PLAYER
WHERE PLAYER_NAME LIKE '김_';

/*PLAYER 테이블에서 김씨와 이씨 찾기*/
SELECT * FROM PLAYER
WHERE PLAYER_NAME LIKE '김%' OR PLAYER_NAME LIKE '이%';

/*PLAYER 테이블에서 이씨가 아닌 사람 찾기*/
SELECT * FROM PLAYER
WHERE NOT PLAYER_NAME LIKE '이%';

/*
 * 집계 함수 : 결과 1개
 * ※ 주의사항 : NULL은 포함시키지 않는다.
 * ※ WHERE절에서 사용 불가
 * 
 * 평균 : AVG(컬럼)
 * 최대값 : MAX(컬럼)
 * 최소값 : MIN(컬럼)
 * 총 합 : SUM(컬럼)
 * 개수 : COUNT(컬럼)
 * 
 * */

SELECT AVG(HEIGHT), MAX(HEIGHT), MIN(HEIGHT), SUM(HEIGHT), COUNT(HEIGHT) FROM PLAYER;

/*PLAYER 테이블에서 HEIGHT 개수 검색(NULL 포함시켜서 COUNT 하기)*/
SELECT COUNT(NVL(HEIGHT, 0)) FROM PLAYER;/*null일 경우 0으로 해서 계산*/
SELECT COUNT(*) FROM PLAYER;

/*정렬
 * 
 * ORDER BY 컬럼명,... ASC : 오름 차순
 * ORDER BY 컬럼명,... DESC : 내림 차순
 * 
 * */

SELECT * FROM PLAYER ORDER BY HEIGHT;
SELECT * FROM PLAYER ORDER BY HEIGHT DESC;
SELECT * FROM PLAYER ORDER BY 1;
SELECT * FROM PLAYER ORDER BY HEIGHT ASC, WEIGHT DESC; 
SELECT * FROM PLAYER ORDER BY HEIGHT, WEIGHT DESC; 

/*PLAYER 테이블에서 키 순, 몸무게 순으로 오름차순 검색*/
/*NULL이 아닌 값만 검색*/
/*첫번째 컬럼 값이 같으면 두번째 정렬을 한다.*/
SELECT * FROM PLAYER
WHERE NOT HEIGHT IS NULL AND NOT WEIGHT IS NULL/*NULL이 아닌 값만 검색*/
ORDER BY HEIGHT, WEIGHT;/*첫번째 컬럼 값이 같으면 두번째 정렬을 한다.*/

/*
 * GROUP BY : ~별 (예: 포지션 별 평균 키)
 * 
 * GROUP BY 컬럼명 HAVING 조건식
 * ※ WHERE절에 우선적으로 처리할 조건식을 작성해야 속도가 빠르다.
 * */

/*PLAYER 테이블에서 포지션 종류 검색*/
SELECT "POSITION" FROM PLAYER
WHERE "POSITION" IS NOT NULL
GROUP BY "POSITION";

/*PLAYER 테이블에서 몸무게가 80이상인 선수들의 평균 키가 180이상인 포지션 검색*/
SELECT "POSITION", MIN(WEIGHT), AVG(HEIGHT) FROM PLAYER
WHERE WEIGHT >= 80 
GROUP BY "POSITION"
HAVING AVG(HEIGHT) >= 180;

/*
 * EMPLOYEES 테이블에서 JOB_ID별 평균 SALARY가 10000미만인 JOB_ID 검색
 * JOB_ID는 알파벳 순으로 정렬(오름차순)
 * */
SELECT * FROM EMPLOYEES
WHERE SALARY IS NULL;

SELECT JOB_ID, AVG(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID
HAVING AVG(SALARY) < 10000
ORDER BY 1;

/*
 * SUB QUERY
 * 
 * FROM절 : IN LINE VIEW
 * SELECT절 : SCALAR SUB QUERY
 * WHERE절 : SUB QUERY
 * 
 * */
/*PLAYER 테이블에서 TEAM_ID가 'K01'인 선수 중 POSITION이 'GK'인 선수*/
SELECT * FROM
(SELECT * FROM PLAYER WHERE TEAM_ID = 'K01')
WHERE "POSITION" = 'GK';

SELECT * FROM PLAYER
WHERE TEAM_ID = 'K01' AND "POSITION" = 'GK';

/*정남일 선수가 소속된 팀의 선수들 조회(서브쿼리)*/
SELECT TEAM_ID  FROM PLAYER
WHERE PLAYER_NAME = '정남일';

SELECT * FROM PLAYER
WHERE TEAM_ID = 'K07';

SELECT * FROM PLAYER
WHERE TEAM_ID = 
(
   SELECT TEAM_ID  FROM PLAYER
   WHERE PLAYER_NAME = '정남일'
)

/*PLAYER 테이블에서 전체 평균 키와 포지션별 평균 키 구하기(스칼라)*/
SELECT AVG(HEIGHT) FROM PLAYER;

SELECT AVG(HEIGHT) FROM PLAYER
WHERE HEIGHT IS NOT NULL
GROUP BY "POSITION";

SELECT AVG(HEIGHT) "포지션별 평균 키", (SELECT AVG(HEIGHT) FROM PLAYER) "전체 평균 키" FROM PLAYER
WHERE HEIGHT IS NOT NULL
GROUP BY "POSITION";

/*경기장 중 경기 일정이 20120501~20120502 사이에 있는 경기장 전체 정보 조회(서브쿼리)*/
SELECT * FROM STADIUM
WHERE STADIUM_ID IN 
(
   SELECT STADIUM_ID FROM SCHEDULE
   WHERE SCHE_DATE BETWEEN '20120501' AND '20120502'
);

/*※※※※※※※※※※※※※※※※※※※※※※※
 * TCL 직접 제어하여 반드시 결과 확인 후 롤백하기
 * ※※※※※※※※※※※※※※※※※※※※※※
 * */
/*EMPLOYEES 테이블에서 평균 급여보다 낮은 사원들의 급여를 20% 인상*/
SELECT AVG(SALARY) FROM EMPLOYEES;

SELECT * FROM EMPLOYEES
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

UPDATE EMPLOYEES
SET SALARY = SALARY * 1.2
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

/*PLAYER 테이블에서 NICKNAME이 NULL인 선수들을 정태민 선수의 닉네임으로 바꾸기*/
SELECT * FROM PLAYER
WHERE NICKNAME IS NULL;

UPDATE PLAYER
SET NICKNAME = (SELECT NICKNAME FROM PLAYER WHERE PLAYER_NAME = '정태민')
WHERE NICKNAME IS NULL;

SELECT NICKNAME FROM PLAYER WHERE PLAYER_NAME = '정태민';

/*PLAYER 테이블에서 평균 키보다 큰 선수들 삭제*/
SELECT COUNT(*) FROM PLAYER
WHERE HEIGHT > (SELECT AVG(HEIGHT) FROM PLAYER);

DELETE FROM PLAYER
WHERE HEIGHT > (SELECT AVG(HEIGHT) FROM PLAYER);

/*JOIN*/

/*EMP 테이블 사원번호로 DEPT 테이블의 지역 검색*/
SELECT * FROM EMP;
SELECT * FROM DEPT;

/*선행 테이블은 행의 개수가 더 적은 것으로 선택한다.*/
SELECT EMPNO, LOC FROM 
DEPT D JOIN EMP E
ON E.DEPTNO = D.DEPTNO;

/*PLAYER 테이블에서 송종국 선수가 속한 팀의 전화번호 검색하기*/
SELECT PLAYER_NAME, TEL FROM 
PLAYER P JOIN TEAM T
ON P.TEAM_ID = T.TEAM_ID AND PLAYER_NAME = '송종국';

/*JOBS 테이블에서 JOB_ID로 직원들의 JOB_TITLE, EMAIL, 성, 이름 검색*/
SELECT * FROM JOBS;
SELECT * FROM EMPLOYEES;

SELECT JOB_TITLE, E.EMAIL, E.LAST_NAME || ' ' || E.FIRST_NAME NAME FROM
JOBS J JOIN EMPLOYEES E
ON J.JOB_ID = E.JOB_ID;

/*EMP 테이블의 SAL을 SALGRADE 등급으로 나누기*/
SELECT * FROM EMP;
SELECT * FROM SALGRADE;

SELECT E.EMPNO, E.ENAME, E.SAL, S.GRADE FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;

/*EMPLOYEES 테이블에서 HIREDATE가 2003~2005년까지인 사원의 정보와 부서명 검색*/
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

/*RR/MM/DD*/
SELECT SYS_CONTEXT('USERENV', 'NLS_DATE_FORMAT') FROM DUAL;
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM';
ALTER SESSION SET NLS_DATE_FORMAT = 'RR/MM/DD';

SELECT E.*, D.DEPARTMENT_NAME FROM DEPARTMENTS D JOIN EMPLOYEES E
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID AND E.HIRE_DATE BETWEEN '2003' AND '2005';

/*JOB_TITLE 중 'Manager'라는 문자열이 포함된 직업들의 평균 연봉을 JOB_TITLE별로 검색*/
SELECT * FROM EMPLOYEES;

SELECT JOB_TITLE FROM JOBS
WHERE JOB_TITLE LIKE '%Manager%'
GROUP BY JOB_TITLE;

SELECT JOB_TITLE, AVG(E.SALARY) FROM JOBS J JOIN EMPLOYEES E
ON J.JOB_ID = E.JOB_ID AND JOB_TITLE LIKE '%Manager%'
GROUP BY JOB_TITLE;

/*EMP 테이블에서 ENAME에 L이 있는 사원들의 DNAME과 LOC 검색*/
SELECT * FROM EMP;
SELECT * FROM DEPT;

SELECT E.ENAME, D.DNAME, D.LOC FROM DEPT D JOIN EMP E
ON D.DEPTNO = E.DEPTNO AND E.ENAME LIKE '%L%';

/*축구 선수들 중에서 각 팀별로 키가 가장 큰 선수들 전체정보 검색(JOIN 사용)*/
SELECT * FROM PLAYER;

SELECT TEAM_ID, MAX(HEIGHT) FROM PLAYER
GROUP BY TEAM_ID;

SELECT P2.*
FROM 
(
   SELECT TEAM_ID, MAX(HEIGHT) MAX_HEIGHT FROM PLAYER
   GROUP BY TEAM_ID
) P1 JOIN PLAYER P2
ON P1.TEAM_ID = P2.TEAM_ID AND P1.MAX_HEIGHT = P2.HEIGHT
ORDER BY P1.TEAM_ID;

/*축구 선수들 중에서 각 팀별로 키가 가장 큰 선수들 전체정보 검색(서브쿼리만 사용)
 * * (A, B) IN (C, D) == A = C AND B = D
 * */

SELECT * FROM PLAYER
WHERE (TEAM_ID, HEIGHT) IN (SELECT TEAM_ID, MAX(HEIGHT) FROM PLAYER GROUP BY TEAM_ID)
ORDER BY 3;

/*EMP 테이블에서 사원의 이름과 매니저 이름을 검색*/
/*셀프 조인*/
SELECT E1.ENAME 사원, E2.ENAME 매니저 FROM 
EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO;

SELECT E1.ENAME 사원, E2.ENAME 매니저
FROM 
(
SELECT E.EMPNO, E.ENAME, E.JOB, NVL(E.MGR, 7839) MGR, E.HIREDATE, E.SAL, E.COMM, E.DEPTNO 
FROM EMP E
) E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO;

/*==================================================================*/
/*[브론즈]*/
/*PLAYER 테이블에서 키가 NULL인 선수들은 키를 170으로 변경하여 평균 구하기(NULL 포함)*/
SELECT AVG(NVL(HEIGHT, 170)) "평균 키" FROM PLAYER;

/*[실버]*/
/*PLAYER 테이블에서 팀 별 최대 몸무게*/
SELECT TEAM_ID, MAX(WEIGHT) "최대 몸무게" FROM PLAYER
GROUP BY TEAM_ID;

/*[골드]*/
/*AVG 함수를 쓰지 않고 PLAYER 테이블에서 선수들의 평균 키 구하기(NULL 포함)*/
/*SELECT COUNT(NVL(HEIGHT, 0)) FROM PLAYER;*/
SELECT SUM(HEIGHT) / COUNT(NVL(HEIGHT, 0)) "평균 키" FROM PLAYER;

/*[플래티넘]*/
/*DEPT 테이블의 LOC별 평균 급여를 반올림한 값과 각 LOC별 SAL 총 합을 조회
반올림 : ROUND()*/
SELECT LOC, ROUND(AVG(SAL), 2) "평균 급여", SUM(SAL) "총 급여"
FROM DEPT D JOIN EMP E
ON D.DEPTNO = E.DEPTNO
GROUP BY LOC;

/*[다이아]*/
/*PLAYER 테이블에서 팀별 최대 몸무게인 선수 검색*/
SELECT P.* FROM TEAM T JOIN PLAYER P
ON T.TEAM_ID = P.TEAM_ID
AND (P.TEAM_ID, P.WEIGHT) IN (SELECT TEAM_ID, MAX(WEIGHT) FROM PLAYER GROUP BY TEAM_ID)
ORDER BY 3;

/*[마스터]*/
/*EMP 테이블에서 HIREDATE가 FORD의 입사년도와 같은 사원 전체 정보 조회*/
SELECT * FROM EMP
WHERE TO_CHAR(HIREDATE, 'YYYY') = (SELECT TO_CHAR(HIREDATE, 'YYYY') FROM EMP WHERE ENAME = 'FORD');






