# DB(Database)
    데이터가 모여 있는 기지.
    추상적인 용어.

# DBMS(Database Management System)
    DB를 관리할 수 있는 구체적인 시스템
    오라클, 마리아DB, MySQL, MS-SQL, MongoDB(스키마가 없다.), ...

# 오라클 DBMS 버전
    i : internet
    g : grid
    c : cloud
    
# 계정
    sys : 모든 권한을 가지고 있는 최상위 계정(admin)
    system : 일반 계정들을 관리하는 계정
    일반 계정 : 스키마를 관리하는 계정(hr, scott, ...)

# 스키마
    정리가 잘 되어 있는 표들의 묶음 혹은 상태

# 일반 계정 접속(hr)
    cmd 접속 > sqlplus system/1234 > 비밀번호 : 1234
    SQL > show user
    USER is "SYSTEM"
    SQL > alter user hr account unlock;
    SQL > alter user hr identified by hr;
    SQL > conn hr/hr
    SQL > show userㅇ
    USER is "HR"
    
# RDBMS(관계형 데이터베이스 시스템)
    테이블끼리 서로 관계를 맺는다.
    
# COLUMN(열, 속성, 필드)
    공통된 값들의 주제, 집합

# ROW(행, 레코드, 튜플)
    하나의 정보

# PRIMARY KEY(PK)
    고유한 값.
    각 행의 구분점으로 사용된다.
    중복이 없고 NULL값을 허용하지 않는다.

# FOREIGN KEY(FK)
    다른 테이블의 PK를 의미한다.
    보통 테이블끼리 관계를 맺을 때 사용한다.
    중복도 가능하고 NULL도 가능하다.

# UNIQUE KEY(UK)
    NULL은 허용하지만 중복을 허용하지 않는다.

# 조합키(복합키)
    하나의 테이블에서 2개 이상 컬럼에 PK를 줄 수 있다.
    각 컬럼의 데이터는 중복이 허용되지만, 조합 시 중복은 허용하지 않는다.
    NULL도 허용되지 않는다.
    
# 컴파일 언어와 스크립트 언어
	
# - 컴파일 언어
    파일 단위로 해석한다(일괄처리).
    빈번한 수정 시 비효율적이다.

# - 스크립트 언어
    한 줄 단위로 해석한다(개별처리).
    빈번한 수정 시 효율적이다.
    
# SQL문(쿼리문) - DDL,DML, DCL, TCL

# ▶DDL(Data Definition Language)
    테이블 조작, 제어 관련 쿼리문

1. CREATE : 테이블 생성<br>
	CREATE TABLE[테이블명]([컬럼명][자료형(용량)][제약조건],...);//대괄호는 쓰는게 아니다.<br>

2. DROP : 테이블 삭제<br>
	DROP TABLE [테이블명]<br>

3. ALTER : 테이블 수정<br>
	ALTER TABLE [테이블명]<br>
	- 테이블명 수정<br>
		RENAME TO [새로운 테이블명]<br>
	- 컬럼 추가<br>
		ADD([새로운 컬럼명][자료형(용량)])<br>
	- 컬럼명 변경<br>
		RENAME COLUMN [기존 컬럼명] TO [새로운 컬럼명]<br>
	- 컬럼 삭제<br>
		DROP COLUMN [컬럼명]<br>
	- 컬럼 수정<br>
		MODIFY([기존 컬럼명][자료형(용량)]);<br>

4. TRUNCATE : 테이블 내용 전체 삭제<br>
	TRUNCATE TABLE [테이블명];<br>
    
