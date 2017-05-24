SHOW DATABASES;
-- 单行注释  --空格  一段注释 ctrl 斜杠
-- 多行注释 星号 斜杠
-- Ctrl + Enter = 运行
CREATE DATABASE db_1702;

USE db_1702;

DROP DATABASE db_1702;

-- USE db_1702;

SHOW TABLES;

CREATE TABLE t_student (
  sno    VARCHAR(10), -- variable character 可变长字符类型
  sname  VARCHAR(10),-- 属性 列 字段 column/列
  gender CHAR(1),
  age    INT(2)
);
DROP TABLE t_student;

SELECT *
FROM t_student;

INSERT INTO t_student
VALUES ('2017001', '张三', '男', 18);

SELECT 1  +  1;
