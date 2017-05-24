/*1.
一个学生选课系统的数据库 db_exam，包含以下库表：
student 学生表
id
name
age
gender
dob
departmentId

department 系别表
id
title 系名称
tel

course 课程表
id
title 课程名称
credit 学分

student_course 选课表
id
studentId
departmentId
grade 考试成绩
使用合理的数据类型、约束和规范的语句创建以上各表（40分）
写出查询各表字段注释、各表名注释的语句 (10分)
为存在关联的表追加合理的外键（10分）
为各表添加 5 条样本数据（10分）
修改选课表 grade 字段，改名为 score（10分）
查询所有姓王的学生（10分）
删除各表，删除数据库（10分）*/







SHOW DATABASES;

CREATE DATABASE db_1702;

USE db_1702;

DROP DATABASE db_1702;


SHOW TABLES;
CREATE TABLE db_1702.student (
  name   VARCHAR(255) COMMENT '姓名',
  age    INT UNSIGNED COMMENT '年龄',
  gender CHAR(2) COMMENT '性别',
  dob DATE COMMENT '出生日期'
);


INSERT INTO db_1702.student
VALUES ( 'Jerry', '18', NULL,  '1999-5-1');

SELECT *
FROM db_1702.student;

INSERT INTO db_1702.course
VALUES ('20171','java',NULL );
INSERT INTO db_1702.course
VALUES ('20171','java',NULL );
INSERT INTO db_1702.course
VALUES ('20171','java',NULL );
INSERT INTO db_1702.course
VALUES ('20171','java',NULL);
INSERT INTO db_1702.course
VALUES ('20171','java',NULL);

SELECT *
FROM db_1702.course;

INSERT INTO db_1702.student_course VALUES (NULL, 2, 1, NULL);
INSERT INTO db_1702.student_course VALUES (NULL, 2, 2, NULL);
INSERT INTO db_1702.student_course VALUES (NULL, 1, 2, NULL);

SELECT *
FROM db_1702.student_course;


DROP TABLE IF EXISTS db_1702.course;
CREATE TABLE db_1702.course (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID Pk',
  title  VARCHAR(191) UNIQUE
  COMMENT '课程名',
  credit INT COMMENT '学分'
);

  DROP TABLE IF EXISTS db_1702.student_course;
CREATE TABLE db_1702.student_course (
  id        INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  studentId INT COMMENT '学生 ID',
  courseId  INT COMMENT '课程 ID',
  score     INT COMMENT '考试成绩'


);
SELECT *
FROM db_1702.student;

TRUNCATE TABLE db_1702.course;

TRUNCATE TABLE db_1702.student;-- 清空
