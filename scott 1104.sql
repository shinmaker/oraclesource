select * from tab;


--emp ���̺��� ��� ���� ��ȸ

select * from emp;

--emp ���̺��� ����    --varchar�� ���ڿ��� ����
desc emp;

--emp ���̺��� Ư�� �ʵ常 ��ȸ
SELECT ename, job, sal from emp;

-- �ߺ��Ǵ� ���ڵ� ������ ��ȸ : distinct

select DISTINCT deptno from emp;

--alais��Ī : as ~~~~(��Ī) ��ȸ�Ҷ���!

select empno as �����ȣ from emp;


-- �ʵ忡 ������ ������
select ename, sal, (12*sal)+comm as ����, comm from emp;


-- ""���� �ϳ��� �������� ��Ÿ�����Ҽ�����
select ename as ����̸�, job as "�� å", comm as ���ʽ� from emp;

--ORDER BY : �����Ͽ� ��ȸ�Ҷ�
-- �ϳ��� ���� ������ �־� �������� (ASC)��ȸ order by ~~~~
-- DESC�� ��������
select ename,sal from emp order by sal desc;

--��ü �����͸� ��ȸ(�����ȣ ��������)
select * from emp order by empno;

--�μ���ȣ�� ���������̰� �μ���ȣ�� �����ϴٸ� �޿��� ��������[ ,�� ����]
select * from emp order by deptno asc, sal desc;


--[�ǽ�]----------------------------------------------------------------

select empno as EMPLOYEE_NO, ENAME AS EMPLOYEE_NAME,job, MGR AS MANAGER,hiredate,
SAL AS SALARY, COMM AS COMMISSION, DEPTNO AS DEPARTMENT_NO from emp 
order by deptno desc, ename asc;
-------------------------------------------------------------------------

-- WHERE : ��ȸ�� �� �� ������ �ִ°�
-- �μ���ȣ�� 30���� ������� ��ȸ�Ҷ�

select * from emp where deptno = 30;

--�����ȣ�� 7782�� ��� ��ȸ

select * from emp where empno = 7782;

--�μ���ȣ�� 30�̰�, ����� ��å�� salesman ������ȸ
-- ���ڸ� ã���� '' Ȱ���ؾ���, ��ҹ��� �����ؾ���
select * from emp where deptno=30 and job = 'SALESMAN';

-------------------------------------------------------------------------
--�����ȣ�� 7499�̰� �μ���ȣ�� 30�� ������ȸ

select empno as �����ȣ, deptno as �μ���ȣ from emp where empno = 7499 and deptno = 30;

--�μ���ȣ�� 30�̰ų� �����å�� CLERK ������ȸ
SELECT deptno as �μ���ȣ, job as �����å from emp where deptno = 30 or job = 'CLERK';
--�μ���ȣ�� 20�̰ų� �����å�� SALESMAN ������ȸ
SELECT deptno as �μ���ȣ, job as �����å from emp where deptno = 20 or job = 'SALESMAN';

---------------------------------------------------------------------------------