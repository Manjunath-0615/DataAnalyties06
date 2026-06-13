create database my_1;
use my_1;
CREATE TABLE students2(
    name VARCHAR(50)
);

INSERT INTO students2 VALUES
('Ravi'),
('Ram'),
('Sita'),
('Ramesh');
SELECT *
FROM students2
WHERE name REGEXP '^Ra';
SELECT *
FROM students2
WHERE name REGEXP 'a$';