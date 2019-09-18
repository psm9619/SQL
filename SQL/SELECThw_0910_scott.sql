-- SELECCT TABLE_NAME FROM USER_TABLES;
--
--drop table student;
--create table student(
--stu_no char(9),
--stu_name varchar2(12),
--stu_dept varchar2(20),
--stu_grade number(1),
--stu_class char(1),
--stu_gender char(1),
--stu_height number (5,2),
--stu_weight number(5,2),
--constraint p_stu_no primary key(stu_no));
------
--drop table student;

--create table subject(
--sub_no char(3),
--sub_name varchar2(30),
--sub_prof varchar2(12),
--sub_grade number(1),
--sub_dept varchar2(20),
--constraint p_sub_no primary key(sub_no));
----
--drop table subject;
--create table enrol(
--sub_no char(3),
--stu_no char(9),
--enr_grade number(3),
--constraint p_course primary key(sub_no, stu_no));
--drop table enrol;
--
--
--insert into student values(20153075, '���Ѻ�', '���', 1, 'C', 'M', 177, 80);
--insert into student values(20153088, '���¿�', '���', 1, 'C', 'F', 162, 50);
--insert into student values(20143054, '������', '���', 2, 'C', 'F', 154, 47);
--insert into student values(20152088, '���ο�', '��������', 1, 'C', 'M', 188, 90);
--insert into student values(20142021, '�ɼ���', '��������', 2, 'A', 'F', 168, 45);
--insert into student values(20132003, '����ö', '��������', 3, 'B', 'M', null, 63);
--insert into student values(20151062, '������', '��ǻ������', 1, 'B', 'M', 166, 67);
--insert into student values(20141007, '������', '��ǻ������', 2, 'A', 'M', 174, 64);
--insert into student values(20131001, '������', '��ǻ������', 3, 'C', 'M', null, 72);
--insert into student values(20131025, '������', '��ǻ������', 3, 'A', 'F', 172, 63);

--insert into subject values('111', '�����ͺ��̽�', '���翵', 2, '��ǻ������');
--insert into subject values('110', '�ڵ�����', '������', 2, '��������');
--insert into subject values('109', '�ڵ�ȭ����', '�ڹο�', 3, '���');
--insert into subject values('101', '��ǻ�Ͱ���', '������', 3, '��ǻ������');
--insert into subject values('102', '�����۹�', '���¿�', 1, '���');
--insert into subject values('103', '�������ڽ���', '������', 1, '��������');
--insert into subject values('104', '�ý��ۺм�����', '������', 3, '��ǻ������');
--insert into subject values('105', '����Ҽ���', '���', 1, '���');
--insert into subject values('106', '����ȸ�ν���', '�ֿ���', 3, '��������');
--insert into subject values('107', 'CAD����ǽ�', '������', 1, '���');
--insert into subject values('108', '����Ʈ�������', '�ǹμ�', 1, '��ǻ������');
--
--INSERT INTO ENROL VALUES('101', '20131001', 80);
--INSERT INTO ENROL VALUES('104', '20131001', 56);
--INSERT INTO ENROL VALUES('106', '20132003', 72);
--INSERT INTO ENROL VALUES('103', '20152008', 45);
--INSERT INTO ENROL VALUES('101', '20131025', 65);
--INSERT INTO ENROL VALUES('104', '20131025', 65);
--INSERT INTO ENROL VALUES('108', '20151062', 81);
--INSERT INTO ENROL VALUES('107', '20143054', 41);
--INSERT INTO ENROL VALUES('102', '20153075', 66);
--INSERT INTO ENROL VALUES('105', '20153075', 56);
--INSERT INTO ENROL VALUES('102', '20153088', 61);
--INSERT INTO ENROL VALUES('105', '20153088', 78);

--SELECT * FROM STUDENT;
--SELECT * FROM SUBJECT;
--SELECT * FROM ENROL;

DESC STUDENT;

select distinct(Stu_dept) from student;

select * from student where stu_height between 170 and 180;

select stu_no, stu_name from student where stu_name LIKE '��%';

select stu_no, stu_name from student where stu_name LIKE '_��%';

select CEIL(3.1) from DUAL;

select CONCAT (stu_name, stu_no) from student;

select SUBSTR ('abcdef', 1,3) from DUAL;

select ENAME, INSTR (ENAME, 'A', 2,1) from EMP;

select RPAD(ename, 10, '$') from EMP;

select stu_name, NVL(stu_height, 0) from student;

select * from EMP;

select ename,sal, comm, NVL2(comm, sal+comm, sal) salary from emp;

select NVL(NULLIF('A', 'A'), '�ΰ�') from dual;

DESC STUDENT;
select stu_Dept, sstu_grade ,count(*) from student where stu_weight >=50 group by stu_dept, stu_grade;
---
---
---
---
---
---3.
describe salgrade;
---4.
select empno, ename, job from emp;
---6.
select dname, loc from dept;
---8.
select distinct hiredate from emp;
---11.
select ename, sal*6 from emp;
---12.
select ename, comm*6 from emp;
---13.
select ename as "NAME", sal as "SALARY" from emp;
---14.
select empno as �����ȣ, ename as ����̸�, hiredate as �Ի���, deptno as �μ���ȣ from emp;
---16.
select job || ename from emp;
---17.
select hiredate ||'�� �Ի��� ' ||ename||'�Դϴ�' from emp;
---19.
select empno, ename from emp where sal >=2000;
---21.
select ename from emp where hiredate = '1980-12-17';
---22.
select dname, loc from dept where deptno <>30;
--23. 
select hisal, losal from salgrade where grade = 5;
--25.
select ename, job, deptno from emp where deptno=10 and job='MANAGER';
--------------------------------
--------------------------------
--------------------------------
--2.
DESC subject;
--4.
select * from enrol;
--6. 
desc student;
select stu_dept, stu_class from student;
--8.
select * from student;
--10. 
select sub_name, sub_prof from subject;
--12. 
select stu_height, stu_weight, stu_no, stu_name from student;
--14.
select distinct(stu_gender) from student;
--16.
describe student;
select distinct stu_dept, stu_grade from student;
--18.
select stu_weight+5 from student;
--20.
select stu_no as �й�, stu_name as �̸� from student;
--22.
describe subject;
select sub_name as �����̸�, sub_prof as ������ from subject;
--24.
select stu_dept ||' '|| stu_name||'�Դϴ�.' from student;
--26.
select * from student where stu_dept = '���';
--28.
select * from student where stu_height > 170;
--30.
select stu_no, stu_name from student where stu_dept = '���';
--32.
select stu_no, stu_name from student where stu_dept = '��������';
--34.
select stu_name from student where stu_gender = 'F';
--36.
select * from student where stu_dept <> '���';
--38.
select * from student where stu_name = '������';
--40.
select * from student where stu_dept = '���' and stu_grade = 2;
--42.
select stu_name from student where stu_dept <>'��ǻ������' and stu_grade = 1;
--44. 
select stu_name from student where stu_grade = 2 and stu_class = 'A';
--46. 
select stu_no, stu_name, stu_dept from student where stu_no like '2013%';
--48. 
select stu_no, stu_name from student where stu_name like '��%';
--50.
select * from student where stu_no like '2006%';
--52.
SELECT STU_NAME FROM STUDENT WHERE stu_height is null;
--54.
select stu_no, stu_name from student where stu_dept IN ('��ǻ������', '���');
--56.
select stu_no, stu_name from student order by stu_no;
--58.
select stu_no, stu_name , stu_dept from student order by stu_dept ;
--60.
select * from student order by stu_class;
--62.
select Lower(stu_gender) from student;
--64.
select stu_dept|| stu_name from student;
--66.
select stu_dept||'�� '||stu_grade||'�г� '||stu_name||'�Դϴ�' from student;
--68.
select stu_name, LENGTH (stu_name) from student;
--70.
select INSTR(stu_name, '��')from student;
--72.
select LPAD(stu_name, 15, '&') from student;
--74.
select stu_no, stu_name, round(stu_height,1) from student;
--76.
select MOD(stu_height,30) from student;
--78.
select stu_no, stu_name, TRUNC(stu_height,2) from student;
--80.
select NVL(to_char(stu_height),'�Է¿��'), stu_no, stu_name from student;
--82.
select nvl(nullif(stu_gender, 'M'), '����') from student;
--84.
select stu_no, stu_name, stu_gender, stu_weight, 
decode (Stu_gender, 'F', stu_weight+5,
                    'M', stu_weight-5,
                    stu_weight) as ����ȸ�����
                    from student;
--86.
select min(stu_height) from student;
--88.
select max(stu_name), min(Stu_name) from student;
--90.
select max(stu_no), min(Stu_no) from student;
--92.
select count(distinct(substr(stu_name, 1,1))) from student;
--94.
select count(*) from enrol;
--96.
select stu_dept, count(*) from student group by stu_Dept order by count(*) desc;
--98.
select stu_grade, count(*) from student group by stu_grade order by count(*) desc;
--100.
select stddev(stu_height) from student;
--102.
select avg(stu_height) from student group by stu_grade, stu_dept;
--104.
select count(*) from student group by stu_dept order by count(*);
--106.
select avg(stu_weight) from student group by stu_dept, stu_grade order by avg(stu_weight);
--108.
select stu_dept, avg(stu_height) from student group by stu_dept having avg(stu_height)>=170 order by avg(stu_height) desc;






















