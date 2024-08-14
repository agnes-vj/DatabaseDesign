DROP DATABASE IF EXISTS normalisationsql;
CREATE DATABASE normalisationsql;

\c normalisationsql;


CREATE TABLE students
( 
    student_id INT PRIMARY KEY,
    student_name VARCHAR,
    courses VARCHAR,
    age INT
);

INSERT INTO students
    (student_id, student_name, courses, age)
VALUES
    (10015, 'Joe', 'Python', 21),
    (10028, 'Paul', 'Python, Javascript', 18),
    (10037, 'Danika', 'C++, Java', 20),
    (10051, 'Kyle', 'SQL, Javascript', 18),
    (10074, 'Alex', 'C++', 19),
    (10088, 'Simon', 'Java, Javascript', 20);


SELECT * FROM students;
