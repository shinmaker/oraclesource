select * from tab;


-- employees ���̺� ��ü���� ��ȸ���
select * from employees;

-- employees ���̺��� ���� ��ȸ���
select first_name,last_name,job_id from employees;

select last_name from employees;

select job_id from employees;

--�ߺ��ȹ��� �������°�
select DISTINCT job_id from employees;

--�����ȣ�� 176�� ����� last_name�� �μ���ȣ ��ȸ
select last_name, department_id from employees where employee_id = 176;
--������ 12000�̻�Ǵ� �������� LAST_NAME �� ������ȸ
select last_name, salary from employees where salary >=12000;
--������ 5000���� 12000�� ���� �̿��� ������� LAST_NAME �� ������ȸ
select last_name, salary from employees where salary <= 5000 or salary >= 12000;