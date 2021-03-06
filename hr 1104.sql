select * from tab;


-- employees 테이블 전체내용 조회방법
select * from employees;

-- employees 테이블의 개별 조회방법
select first_name,last_name,job_id from employees;

select last_name from employees;

select job_id from employees;

--중복된문항 지워내는것
select DISTINCT job_id from employees;



-----------------------------------실습--------------------------------------------
--사원번호가 176인 사람의 last_name와 부서번호 조회
select last_name, department_id from employees where employee_id = 176;


--연봉이 12000이상되는 직원들의 LAST_NAME 및 연봉조회
select last_name, salary from employees where salary >=12000;


--연봉이 5000에서 12000의 범위 이외의 사람들의 LAST_NAME 및 연봉조회
select last_name, salary from employees where salary <= 5000 or salary >= 12000;

-- 20번 및 50번 부서에서 근무하는 모든 사원들의 LAST_NAME 및 부서번호를 알파벳순
-- 으로 조회한다.
SELECT last_name, department_id FROM EMPLOYEES WHERE department_id in (20,50) order by last_name;


--커미션을 버는 모든 사원들의 LAST_NAME,연봉,커미션조회하기 단 ,연봉의 역순 및 커미션 역순으로 결과출력하기
SELECT last_name, salary, commission_pct from employees order by salary desc, commission_pct desc;


-- 연봉이 2500,3500,7000이 아니며, 직업이 SA_REP이나 ST_CLERK인 사람들 조회
SELECT job_id, salary from employees where salary not in(2500,3500,7000);


-- 2008/02/20~ 2008/05/01 사이에 고용된 사원들의 LAST_NAME,사원번호,고용일자 조회
--단, 고용일자 내림차순으로 정렬하여 출력
select last_name, employee_id, hire_date from employees where hire_date > '08/02/20' and hire_date < '08/05/01' order by hire_date desc;


--2004년도에 고용된 모든사람들의 LAST_NAME 및 고용일을 조회하여 입사일 기준으로
--오름차순 정렬하여 출력
select last_name, hire_date from employees where hire_date >= '04/01/01' and hire_date <= '04/12/31' order by hire_date;

----------------------------------------------------------------------------------------------------------