하루 10분 SQL 

08장 기본 명령어


구문 #1 SELECT * FROM 테이블명;

구문 #2 필드명1, 필드명2 ..., 필드명n FROM 테이블명;

구문 #3 vlfemaud [AS] 별명 FROM 테이블명;


예제 #1 고객 테이블의 전체 내용을 검색한다.


#SQL
SELECT
    *
FROM tb_customer;

#결과
![](img./1.png)

