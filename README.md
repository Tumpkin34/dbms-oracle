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
	CREATE TABLE [테이블명]([컬럼명][자료형(용량)][제약조건],...);//대괄호는 쓰는게 아니다.<br>

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
    
# 제약조건
	CONSTRAINT 이름 : 제약조건의 이름을 만듬(안만들면 알아서 만듬)
	UNIQUE : UK로 만들어줌(중복이 되면 오류)
	DEFAULT 기본값: 값이 전달되지 않으면 뒤에 설정한 값을 넣는다.
	CHECK(조건식) : 조건식이 TRUE일 때 만 들어간다
	NOT NULL : NULL을 넣을 수 없다.
	
	
# 자료형(TYPE) : 용량은 항상 넉넉하게 주도록 한다.
	
# 숫자
	NUMBER(자릿수) : 정수, 소수점 자릿수는 0으로 설정된다.
	NUMBER(자릿수, 소수점 자릿수) : 실수
# 문자열
	CHAR(용량) : 고정형
		CHAR(4)에 'A'를 넣으면 A^^^빈 자리가 공백으로 채워진다.
		형식을 정한 날짜, 주민등록번호, 사업자 등록번호처럼 글자 수가 절대 변하지 않는 값을 넣는다.			

	VARCHAR(용량), VARCHAR2(용량) : 가변형
		값의 길이만큼 공간이 배정된다. 글자 수에 변화가 있는 값을 넣는다.

# 날짜
	DATE : FORMAT에 맞춰서 날짜를 저장하는 타입

# 무결성
	데이터의 정확성, 일관성, 유효성이 유지되는 것.
	정확성 : 데이터는 애매하지 않아야 한다.
	일관성 : 각 사용자가 일관된 데이터를 볼 수 있도록 해야 한다.
	유효성 : 데이터가 실제 존재하는 데이터여야 한다.

 - 개체 무결성
	      모든 테이블이 PK로 선택된 컬럼을 가져야 한다.

 - 참조 무결성
	      두 테이블의 데이터가 항상 일관된 값을 가지도록 유지하는 것.

 - 도메인 무결성
	      컬럼의 타입, NULL값의 허용 등에 대한 사항을 정의하고
	      올바른 데이터가 입력되었는 지를 확인하는 것.
