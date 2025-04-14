CREATE TABLE college_info (
    college_id INT PRIMARY KEY,
    college_name VARCHAR(100),
    location VARCHAR(100),
    established_year INT,
    position CHAR(1),
    check(college_id>0)
);

CREATE TABLE student_infoo (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    dept VARCHAR(50),
    college_id INT,
    FOREIGN KEY (college_id) REFERENCES college_info(college_id)
);
INSERT INTO college_info VALUES
(1, 'SVR college', 'Bangalore', 1960, 'B'),
(2, 'GEC challakere', 'Challakere', 1990, 'B'),
(3, 'GEC hassan', 'HAssan', 1999, 'A'),
(4, 'Mahesh Pu college', 'MAndya', 2023, 'A'),
(5, 'GEC Ramanagara', 'Ramanagar', 2024, 'C'),
(6, 'GEC Karwar', 'Karwar', 2024, 'A'),
(7, 'St. Johns', 'BAngalore', 2021, 'B'),
(8, 'Christ College', 'Udupi', 2002, 'A'),
(9, 'BM patil', 'Bijapur', 2000, 'A'),
(10, 'Narayana', 'Vijayapura', 2000, 'A'),
(11, 'Sairam colege', 'Kudlu', 1998, 'C'),
(12, 'Sadhguru', 'Hosaroad', 1992, 'A'),
(13, 'St marys', 'BAngalore', 2000, 'A'),
(14, 'National college', 'Davanegere', 1989, 'B'),
(15, 'Oxford College', 'Bellary', 1988, 'A');

INSERT INTO student_infoo VALUES
(101, 'Teddy', 20, 'AIML', 1),
(102, 'Jerry', 21, 'CSE', 2),
(103, 'Hema', 22, 'AIML', 3),
(104, 'Naveen', 22, 'AIML', 4),
(105, 'Nagesh', 22, 'AIML', 5),
(106, 'Dsouza', 20, 'EC', 6),
(107, 'Tom', 21, 'CSE', 7),
(108, 'Sonal', 20, 'AIML', 8),
(109, 'Maha', 20, 'CSE', 9),
(110, 'Nandhini', 21, 'Bcom', 10),
(111, 'Logu', 20, 'BCA', 11),
(112, 'Devi', 20, 'BCA', 12),
(113, 'Roshni', 21, 'BBA', 13),
(114, 'Sri', 20, 'Bcom', 14),
(115, 'Arun', 21, 'IT', 15);

ALTER TABLE student_infoo ADD p_number bigint;
ALTER TABLE college_info ADD p_name VARCHAR(100);

ALTER TABLE student_infoo RENAME COLUMN student_name TO s_name;
ALTER TABLE college_info RENAME COLUMN college_name TO c_name;
ALTER TABLE college_info RENAME COLUMN location TO city;

ALTER TABLE student_infoo MODIFY s_name VARCHAR(150);
ALTER TABLE college_info MODIFY c_name VARCHAR(150);
ALTER TABLE college_info MODIFY p_name VARCHAR(120);

UPDATE student_infoo SET p_number = 9845268134 WHERE student_id = 101;
UPDATE student_infoo SET p_number = 8105404248 WHERE student_id = 102;
UPDATE student_infoo SET p_number = 984581054 WHERE student_id = 103;
UPDATE student_infoo SET p_number = 8317342434 WHERE student_id = 104;
UPDATE student_infoo SET p_number = 83180540 WHERE student_id = 105;
UPDATE student_infoo SET p_number = 9035750717 WHERE student_id = 106;
UPDATE student_infoo SET p_number = 123456 WHERE student_id = 107;
UPDATE student_infoo SET p_number = 9105434 WHERE student_id = 108;
UPDATE student_infoo SET p_number = 812545678 WHERE student_id = 109;
UPDATE student_infoo SET p_number = 71234567 WHERE student_id = 110;
UPDATE student_infoo SET p_number = 910345678 WHERE student_id = 111;
UPDATE student_infoo SET p_number = 8102345678 WHERE student_id = 112;
UPDATE student_infoo SET p_number = 6360860539 WHERE student_id = 113;
UPDATE student_infoo SET p_number = 6360819308 WHERE student_id = 114;
UPDATE student_infoo SET p_number = 8360860539 WHERE student_id = 115;

UPDATE college_info SET p_name = 'MM benal' WHERE college_id = 1;
UPDATE college_info SET p_name = 'Mathew' WHERE college_id = 2;
UPDATE college_info SET p_name = 'Pooja' WHERE college_id = 3;
UPDATE college_info SET p_name = 'Sahana' WHERE college_id = 4;
UPDATE college_info SET p_name = 'Mallikarjun' WHERE college_id = 5;
UPDATE college_info SET p_name = 'Lakshmi' WHERE college_id = 6;
UPDATE college_info SET p_name = 'Soumya' WHERE college_id = 7;
UPDATE college_info SET p_name = 'Swathi' WHERE college_id = 8;
UPDATE college_info SET p_name = 'Hema' WHERE college_id = 9;
UPDATE college_info SET p_name = 'Sridevi' WHERE college_id = 10;
UPDATE college_info SET p_name = 'Nimmie' WHERE college_id = 11;
UPDATE college_info SET p_name = 'Anusha' WHERE college_id = 12;
UPDATE college_info SET p_name = 'Anupama' WHERE college_id = 13;
UPDATE college_info SET p_name = 'Poornima' WHERE college_id = 14;
UPDATE college_info SET p_name = 'Thippeswamy' WHERE college_id = 15;

DELETE FROM student_infoo WHERE student_id = 108;
DELETE FROM student_infoo WHERE student_id = 1;
DELETE FROM student_infoo WHERE dept = 'IT';
DELETE FROM student_infoo WHERE age < 20;

SELECT * FROM student_infoo WHERE dept = 'AIML' AND age > 20;

SELECT * FROM student_infoo WHERE dept = 'CSE' OR age = 19;

SELECT * FROM college_info WHERE college_id IN (1,3,5);

SELECT * FROM student_infoo WHERE dept NOT IN ('MECH', 'CIVIL');

SELECT * FROM student_infoo WHERE age BETWEEN 20 AND 22;

SELECT * FROM student_infoo WHERE age NOT BETWEEN 20 AND 22;

SELECT COUNT(*) AS student_count FROM student_infoo;

SELECT AVG(p_number) AS average_p_number FROM student_infoo;

SELECT MAX(age) AS max_age FROM student_infoo;

SELECT MIN(age) AS min_age FROM student_infoo;

SELECT * FROM student_infoo s inner join college_info c on c.college_id = s.college_id;

SELECT * FROM student_infoo s left join college_info c on c.college_id = s.college_id;

SELECT * FROM student_infoo s right join college_info c on c.college_id = s.college_id;