select * from tab;


--emp 테이블의 모든 내용 조회

select * from emp;

--emp 테이블의 구조    --varchar는 문자열을 뜻함
desc emp;

--emp 테이블의 특정 필드만 조회
SELECT ename, job, sal from emp;

-- 중복되는 레코드 제거후 조회 : distinct

select DISTINCT deptno from emp;

--alais별칭 : as ~~~~(별칭) 조회할때만!

select empno as 사원번호 from emp;


-- 필드에 연산이 가능함
select ename, sal, (12*sal)+comm as 연봉, comm from emp;


-- ""으로 하나의 문장으로 나타내게할수있음
select ename as 사원이름, job as "직 책", comm as 보너스 from emp;

--ORDER BY : 정렬하여 조회할때
-- 하나의 열로 기준을 주어 오름차순 (ASC)조회 order by ~~~~
-- DESC는 내림차순
select ename,sal from emp order by sal desc;

--전체 데이터를 조회(사원번호 오름차순)
select * from emp order by empno;

--부서번호의 오름차순이고 부서번호가 동일하다면 급여의 내림차순[ ,로 기준]
select * from emp order by deptno asc, sal desc;


--[실습]----------------------------------------------------------------

select empno as EMPLOYEE_NO, ENAME AS EMPLOYEE_NAME,job, MGR AS MANAGER,hiredate,
SAL AS SALARY, COMM AS COMMISSION, DEPTNO AS DEPARTMENT_NO from emp 
order by deptno desc, ename asc;
-------------------------------------------------------------------------

-- WHERE : 조회를 할 때 기준을 주는것
-- 부서번호가 30번인 사원들을 조회할때

select * from emp where deptno = 30;

--사원번호가 7782인 사원 조회

select * from emp where empno = 7782;

--부서번호가 30이고, 사원의 직책이 salesman 정보조회
-- 문자를 찾을시 '' 활용해야함, 대소문자 구분해야함
select * from emp where deptno=30 and job = 'SALESMAN';

-------------------------------------------------------------------------
--사원번호가 7499이고 부서번호가 30인 정보조회

select empno as 사원번호, deptno as 부서번호 from emp where empno = 7499 and deptno = 30;

--부서번호가 30이거나 사원직책이 CLERK 정보조회
SELECT deptno as 부서번호, job as 사원직책 from emp where deptno = 30 or job = 'CLERK';
--부서번호가 20이거나 사원직책이 SALESMAN 정보조회
SELECT deptno as 부서번호, job as 사원직책 from emp where deptno = 20 or job = 'SALESMAN';

---------------------------------------------------------------------------------