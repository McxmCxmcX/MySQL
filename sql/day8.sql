SELECT *
FROM scott.dept;

CREATE VIEW scott.v_emp_10
  AS
  SELECT *
  FROM scott.emp
  WHERE DEPTNO = 10;

SHOW FULL TABLES IN scott
WHERE table_type LIKE 'view';

SHOW FULL TABLES IN scott;

DROP VIEW scott.v_emp_10;

DESC scott.dept;

DESC scott.dept;
SHOW FULL COLUMNS FROM scott.dept;
SHOW TABLES STATUS FROM db_sc;
SHOW CREATE TABLE db_sc.student;


START TRANSACTION ;
SELECT *
FROM scott.emp;
TRUNCATE TABLE scott.emp;
DELETE FROM scott.emp;
ROLLBACK ;  -- roll back 回滚


SELECT *
FROM scott.emp