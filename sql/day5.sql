SHOW FULL COLUMNS FROM db_1702.student;

# DML INSERT　ＵＰＤＡＴＥDELETE

SELECT *
FROM db_1702.student;

INSERT INTO db_1702.student
  VALUE (NULL, '002', 'tester', 'I\'m...', 'F', 22,1.6, 1.7, 12.34, '1998-1-2', '2017-5-18 9:01:02');

INSERT INTO db_1702.student (name)
VALUES ('TOM');

INSERT INTO db_1702.student (name)
  VALUE ('N1'), ('N2'), ('N3');

SHOW CREATE TABLE db_1702.student;

SELECT *

FROM db_1702.student;

UPDATE db_1702.student
SET gender = '女';

UPDATE db_1702.student
SET height = 1.6
WHERE id = 10001;

UPDATE db_1702.student
SET height = 1.7, name = '李四'
WHERE id = 10001;



