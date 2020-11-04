select * from tab;


-- employees 테이블 전체내용 조회방법
select * from employees;

-- employees 테이블의 개별 조회방법
select first_name,last_name,job_id from employees;

select last_name from employees;

select job_id from employees;

--중복된문항 지워내는것
select DISTINCT job_id from employees;

--사원번호가 176인 사람의 last_name와 부서번호 조회
select last_name, department_id from employees where employee_id = 176;
--연봉이 12000이상되는 직원들의 LAST_NAME 및 연봉조회
select last_name, salary from employees where salary >=12000;
--연봉이 5000에서 12000의 범위 이외의 사람들의 LAST_NAME 및 연봉조회
select last_name, salary from employees where salary <= 5000 or salary >= 12000;