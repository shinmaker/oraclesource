select * from tab;


-- employees ���̺� ��ü���� ��ȸ���
select * from employees;

-- employees ���̺��� ���� ��ȸ���
select first_name,last_name,job_id from employees;

select last_name from employees;

select job_id from employees;

--�ߺ��ȹ��� �������°�
select DISTINCT job_id from employees;



-----------------------------------�ǽ�--------------------------------------------
--�����ȣ�� 176�� ����� last_name�� �μ���ȣ ��ȸ
select last_name, department_id from employees where employee_id = 176;


--������ 12000�̻�Ǵ� �������� LAST_NAME �� ������ȸ
select last_name, salary from employees where salary >=12000;


--������ 5000���� 12000�� ���� �̿��� ������� LAST_NAME �� ������ȸ
select last_name, salary from employees where salary <= 5000 or salary >= 12000;

-- 20�� �� 50�� �μ����� �ٹ��ϴ� ��� ������� LAST_NAME �� �μ���ȣ�� ���ĺ���
-- ���� ��ȸ�Ѵ�.
SELECT last_name, department_id FROM EMPLOYEES WHERE department_id in (20,50) order by last_name;


--Ŀ�̼��� ���� ��� ������� LAST_NAME,����,Ŀ�̼���ȸ�ϱ� �� ,������ ���� �� Ŀ�̼� �������� �������ϱ�
SELECT last_name, salary, commission_pct from employees order by salary desc, commission_pct desc;


-- ������ 2500,3500,7000�� �ƴϸ�, ������ SA_REP�̳� ST_CLERK�� ����� ��ȸ
SELECT job_id, salary from employees where salary not in(2500,3500,7000);


-- 2008/02/20~ 2008/05/01 ���̿� ���� ������� LAST_NAME,�����ȣ,������� ��ȸ
--��, ������� ������������ �����Ͽ� ���
select last_name, employee_id, hire_date from employees where hire_date > '08/02/20' and hire_date < '08/05/01' order by hire_date desc;


--2004�⵵�� ���� ��������� LAST_NAME �� ������� ��ȸ�Ͽ� �Ի��� ��������
--�������� �����Ͽ� ���
select last_name, hire_date from employees where hire_date >= '04/01/01' and hire_date <= '04/12/31' order by hire_date;

----------------------------------------------------------------------------------------------------------