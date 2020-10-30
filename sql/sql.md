# 하루 10분 SQL 

## 08장 기본 명령어


구문 #1 SELECT * FROM 테이블명;

구문 #2 필드명1, 필드명2 ..., 필드명n FROM 테이블명;

구문 #3 vlfemaud [AS] 별명 FROM 테이블명;


예제 #1 고객 테이블의 전체 내용을 검색한다.


- SQL
SELECT
    *
FROM tb_customer;

- 결과
![](img./img1.png)

- 설명
SELECT 명령에 '*' 문자를 지정해 고객 테이블의 전체 내용을 검색했다. 이SQL은 테이블의 모든 내용을 검색하는 가장 기본적인 명령이다.

예제 #2 고객 테이블에서 고객코드, 고객명, 전화번호, 이메일을 검색한다.

- SQL
SELECT customer_cd,
       customer_nm,
       phone_number,
       email
FROM tb_customer;    

- 결과
![](img./img2.png)

- 설명
고객 테이블(tb_customer)에서 고객코드(customer_cd), 고객명(customer_nm), 전화번호(phone_number), 이메일(email)을 검색하면서 영문 필드명인 customer_cd는 '고객코드'등으로 바꿨다.

- SQL
SELECT customer_cd,
       customer_nm,
       phone_number,
       email
FROM tb_customer;    

- 결과
![](img./img2.png)

- 설명
고객 테이블(tb_customer)에서 고객코드(customer_cd), 고객명(customer_nm), 전화번호(phone_number), 이메일(email)을 검색하면서 영문 필드명인 customer_cd는 '고객코드'등으로 바꿨다.