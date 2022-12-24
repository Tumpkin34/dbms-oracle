CREATE SEQUENCE SEQ_SONG;

CREATE TABLE TBL_SONG(
	num NUMBER,
	name varchar2(500),
	singer varchar2(500)
);

CREATE TABLE TBL_SING(
	num NUMBER,
	name varchar2(500),
	songer varchar2(500)
);

SELECT O.num, O.name, singer, songer FROM TBL_SONG O JOIN TBL_SING I
ON O.num = I.num;

INSERT ALL
/*넣을 값은 컬럼 순서대로*/
INTO 테이블명1 VALUES (값,값,값)
INTO 테이블명2 VALUES (값,값,값)
/*이중으로 INSERT할 때 SELECT를 써줘야 해서 의미없는 테이블 SELECT*/
SELECT * FROM DUAL;

SELECT * FROM TBL_SONG;
SELECT * FROM TBL_SING;

DROP TABLE TBL_SONG;

TRUNCATE TABLE TBL_SONG;

SELECT * FROM TBL_SONG;

INSERT INTO TBL_SONG (num, name, singer)
VALUES (SEQ_SONG.NEXTVAL, '비와당신의이야기', '부활');
INSERT INTO TBL_SONG (num, name, singer)
VALUES (SEQ_SONG.NEXTVAL, '비밀', '부활');
INSERT INTO TBL_SONG (num, name, singer)
VALUES (SEQ_SONG.NEXTVAL, '네버엔딩스토리', '부활');
INSERT INTO TBL_SONG (num, name, singer)
VALUES (SEQ_SONG.NEXTVAL, '아름다운사실', '부활');
INSERT INTO TBL_SONG (num, name, singer)
VALUES (SEQ_SONG.NEXTVAL, '사랑하고있다', '부활');

INSERT INTO TBL_SONG (num, name, singer)
(SELECT SEQ_SONG.NEXTVAL, name, singer FROM TBL_SONG);

SELECT num, name, singer FROM TBL_SONG ORDER BY num desc;

SELECT num, name, singer FROM(
SELECT ROWNUM R, num, name, singer FROM (SELECT num, name, singer FROM TBL_SONG ORDER BY num desc)
WHERE ROWNUM <= 50
)
WHERE R > 40;

SELECT ROWNUM R, num, name, singer FROM (SELECT num, name, singer FROM TBL_SONG ORDER BY num desc)
WHERE ROWNUM <= 50;

