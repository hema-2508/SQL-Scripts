1. Create 3 tables with 10 columns.
1. pkl_info
2. movies_info
3. cosmetics_info)
2. Apply not null and unique for any 5 columns.
3. Insert 20 data for each table
4. After insert add new column using alter and update all the rows for new column for 2 tables
5. aggregate functions for all tables
6. Group by and having.

CREATE TABLE pkl_info(player_id int not null unique,
player_name varchar(30) not null unique, 
team_name varchar(30) not null unique,
position varchar(30) not null unique ,
matches_played int not null unique,
total_points int,
tackles_success int,
raid_success int,
season varchar(30),
country varchar(30));
DESC pkl_info;

INSERT INTO pkl_info VALUES 
(1,'Pradeep','UP Yoddhas', 'Raider', 130,1500,50,1400, '2023-24','India'),
(2,'Maninder','Bengal Warriors', 'Raider1', 120,1350,60,1250, '2023-24','India'),
(3,'Fazel','Puneri Paltan', 'Defender', 110,600,400,200, '2023-24','India'),
(4,'Naveen','Dabang Delhi', 'Raider2', 100,1100,40,1060, '2023-24','India'),
(5,'Surender','Hariyana Steel', 'Defender1', 90,500,350,150, '2023-24','India'),
(6,'Rahul','Jaipur Pink', 'Raider3', 150,1200,70,1130, '2023-24','India'),
(7,'Deepak','Bengal', 'Allrounders', 140,900,300,600, '2023-24','India'),
(8,'Sandeep','Patna pirates', 'All rounder', 131,880,320,480, '2023-24','India'),
(9,'Mohammed','Tamil Thalaivas', 'AR', 132,800,290,410, '2023-24','India'),
(10,'Jang','Warriors', 'Raider4', 99,501,30,470, '2023-24','India'),
(11,'Ajay','TT', 'Raider5',121,1110,45,1055, '2023-24','India'),
(12,'Ravindra','GG', 'Def', 111,452,380,70, '2023-24','India'),
(13,'Anup','U mumba', 'Raider8', 136,1234,80,1170, '2023-24','India'),
(14,'Girish','PP', 'Defs', 138,560,400,160, '2023-24','India'),
(15,'Ashish','BB', 'AlR',122,668,250,350, '2023-24','India'),
(16,'Vikas','Haryana', 'Raider9', 105,950,55,895, '2023-24','India'),
(17,'Rishank','UP Y', 'Raider10', 115,808,60,740, '2023-24','India'),
(18,'Sunil','Gujarat', 'Defender7', 125,520,410,110, '2023-24','India'),
(19,'Rohit','Bengaluru bulls', 'Raider11', 104,1001,70,930, '2023-24','India'),
(20,'Shrikanth','Pirates', 'Raider76', 95,759,40,710, '2023-24','India');

ALTER TABLE pkl_info ADD COLUMN  height_cm INT;
SELECT * FROM pkl_info;

UPDATE pkl_info SET height_cm=178 WHERE player_id=1;
UPDATE pkl_info SET height_cm=182 WHERE player_id=2;
UPDATE pkl_info SET height_cm=185 WHERE player_id=3;
UPDATE pkl_info SET height_cm=175 WHERE player_id=4;
UPDATE pkl_info SET height_cm=180 WHERE player_id=5;
UPDATE pkl_info SET height_cm=177 WHERE player_id=6;
UPDATE pkl_info SET height_cm=179 WHERE player_id=7;
UPDATE pkl_info SET height_cm=181 WHERE player_id=8;
UPDATE pkl_info SET height_cm=176 WHERE player_id=9;
UPDATE pkl_info SET height_cm=174 WHERE player_id=10;
UPDATE pkl_info SET height_cm=183 WHERE player_id=11;
UPDATE pkl_info SET height_cm=186 WHERE player_id=12;
UPDATE pkl_info SET height_cm=178 WHERE player_id=13;
UPDATE pkl_info SET height_cm=184 WHERE player_id=14;
UPDATE pkl_info SET height_cm=175 WHERE player_id=15;
UPDATE pkl_info SET height_cm=180 WHERE player_id=16;
UPDATE pkl_info SET height_cm=177 WHERE player_id=17;
UPDATE pkl_info SET height_cm=185 WHERE player_id=18;
UPDATE pkl_info SET height_cm=176 WHERE player_id=19;
UPDATE pkl_info SET height_cm=173 WHERE player_id=20;

SELECT SUM(matches_played) AS total_matches FROM pkl_info;

SELECT AVG(total_points) AS avg_points FROM pkl_info;

SELECT MAX(raid_success) AS max_raid_success FROM pkl_info;

SELECT COUNT(player_id) AS total_players FROM pkl_info;


SELECT AVG(total_points) AS avg_points FROM pkl_info
GROUP BY position;

SELECT SUM(raid_success) AS total_raid_success FROM pkl_info
GROUP BY team_name;

SELECT COUNT(player_id) AS player_count FROM pkl_info
GROUP BY team_name;

SELECT SUM(raid_success) AS total_raid_success FROM pkl_info
GROUP BY team_name
HAVING SUM(raid_success) > 1000;

SELECT AVG(total_points) AS avg_points FROM pkl_info
GROUP BY position
HAVING AVG(total_points) > 1000;

SELECT COUNT(player_id) AS player_count FROM pkl_info
GROUP BY team_name
HAVING COUNT(player_id) > 2;


CREATE TABLE movies_info (
    movie_id INT NOT NULL UNIQUE,
    movie_name VARCHAR(50) NOT NULL UNIQUE,
    director VARCHAR(50) NOT NULL UNIQUE,
    hero VARCHAR(50) NOT NULL UNIQUE,
    heroine VARCHAR(50) NOT NULL UNIQUE,
    year_of_release INT,
    box_office_collection INT,
    rating FLOAT,
    genre VARCHAR(30),
    language VARCHAR(30)
);

INSERT INTO movies_info VALUES
(1, 'Mersal', 'Atlee', 'Vijay', 'Samantha', 2017, 260, 8.1, 'Action', 'Tamil'),
(2, 'Bigil', 'Atlee2', 'Vijay1', 'Nayanthara', 2019, 285, 7.2, 'Sports', 'Tamil'),
(3, 'Vikram', 'Lokesh Kanagaraj1', 'Kamal Haasan', 'None', 2022, 450, 8.4, 'Action', 'Tamil'),
(4, 'Master', 'Lokesh Kanagaraj2', 'Vijay23', 'Malavika', 2021, 300, 7.8, 'Thriller', 'Tamil'),
(5, 'Kaithi', 'Lokesh Kanagaraj3', 'Karthi', 'None1', 2019, 110, 8.5, 'Action', 'Tamil'),
(6, 'Theri', 'Atlee3', 'Vijay2', 'Samantha1', 2016, 150, 7.2, 'Drama', 'Tamil'),
(7, 'Petta', 'Karthik Subbaraj', 'Rajinikanth1', 'Simran', 2019, 250, 7.3, 'Action', 'Tamil'),
(8, 'Kabali', 'Pa. Ranjith', 'Rajinikanth2', 'Radhika Apte', 2016, 211, 6.5, 'Drama', 'Tamil'),
(9, 'Enthiran', 'Shankar1', 'Rajinikanth3', 'Aishwarya', 2010, 290, 7.1, 'Sci-Fi', 'Tamil'),
(10, '2.0', 'Shankar2', 'Rajinikanth4', 'Amy Jackson', 2018, 650, 6.9, 'Sci-Fi', 'Tamil'),
(11, 'Viswasam', 'Siva1', 'Ajith1', 'Nayanthara1', 2019, 200, 6.7, 'Action', 'Tamil'),
(12, 'Vedalam', 'Siva2', 'Ajith2', 'Shruti Haasan', 2015, 120, 6.4, 'Action', 'Tamil'),
(13, 'Valimai', 'H. Vinoth', 'Ajith3', 'Huma Qureshi', 2022, 150, 6.8, 'Action', 'Tamil'),
(14, 'Beast', 'Nelson1', 'Vijay12', 'Pooja Hegde', 2022, 230, 5.2, 'Action', 'Tamil'),
(15, 'Jailer', 'Nelson2', 'Rajinikanth5', 'Ramya Krishnan', 2023, 600, 7.4, 'Action', 'Tamil'),
(16, 'Ghilli', 'Dharani', 'Vijay3', 'Trisha', 2004, 50, 8.0, 'Action', 'Tamil'),
(17, 'Sivaji', 'Shankar3', 'Rajinikanth6', 'Shriya', 2007, 148, 7.5, 'Drama', 'Tamil'),
(18, 'Anniyan', 'Shankar4', 'Vikram', 'Sada', 2005, 100, 8.2, 'Thriller', 'Tamil'),
(19, 'Vaaranam Aayiram', 'Gautham Menon', 'Suriya', 'Sameera Reddy', 2008, 80, 8.1, 'Drama', 'Tamil'),
(20, 'Thuppakki', 'AR Murugadoss', 'Vijay4', 'Kajal Aggarwal', 2012, 180, 8.0, 'Action', 'Tamil');

SELECT * FROM movies_info;
ALTER TABLE movies_info ADD COLUMN duration INT;


UPDATE movies_info SET duration = 170 WHERE movie_id = 1;
UPDATE movies_info SET duration = 179 WHERE movie_id = 2;
UPDATE movies_info SET duration = 174 WHERE movie_id = 3;
UPDATE movies_info SET duration = 178 WHERE movie_id = 4;
UPDATE movies_info SET duration = 145 WHERE movie_id = 5;
UPDATE movies_info SET duration = 158 WHERE movie_id = 6;
UPDATE movies_info SET duration = 166 WHERE movie_id = 7;
UPDATE movies_info SET duration = 153 WHERE movie_id = 8;
UPDATE movies_info SET duration = 172 WHERE movie_id = 9;
UPDATE movies_info SET duration = 181 WHERE movie_id = 10;
UPDATE movies_info SET duration = 160 WHERE movie_id = 11;
UPDATE movies_info SET duration = 157 WHERE movie_id = 12;
UPDATE movies_info SET duration = 175 WHERE movie_id = 13;
UPDATE movies_info SET duration = 169 WHERE movie_id = 14;
UPDATE movies_info SET duration = 180 WHERE movie_id = 15;
UPDATE movies_info SET duration = 140 WHERE movie_id = 16;
UPDATE movies_info SET duration = 148 WHERE movie_id = 17;
UPDATE movies_info SET duration = 173 WHERE movie_id = 18;
UPDATE movies_info SET duration = 145 WHERE movie_id = 19;
UPDATE movies_info SET duration = 165 WHERE movie_id = 20;


SELECT SUM(box_office_collection) FROM movies_info;

SELECT AVG(rating) FROM movies_info;

SELECT MAX(duration) AS longest_movie FROM movies_info;

SeLECT MIN(duration) AS shortest_movie FROM movies_info;

SELECT COUNT(movie_id) AS total_movies FROM movies_info;


SELECT AVG(rating) AS avg_rating FROM movies_info GROUP BY genre;

SELECT SUM(box_office_collection) AS total_collection FROM movies_info GROUP BY director;

SELECT COUNT(movie_id) AS movies_count FROM movies_info GROUP BY hero;


SELECT AVG(rating) AS avg_rating FROM movies_info GROUP BY genre HAVING AVG(rating) > 7.5;

SELECT SUM(box_office_collection) AS total_collection FROM movies_info GROUP BY director HAVING SUM(box_office_collection) > 200;

SELECT COUNT(movie_id) AS movies_count FROM movies_info GROUP BY hero HAVING COUNT(movie_id) > 2;


CREATE TABLE cosmetics (
    product_id INT NOT NULL UNIQUE,
    product_name VARCHAR(30) NOT NULL UNIQUE,
    brand_name VARCHAR(30) NOT NULL UNIQUE,
    category VARCHAR(30) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT,
    rating DECIMAL(3,2),
    sold_units INT,
    manufacture_date DATE,
    country VARCHAR(30)
);

DESC cosmetics;

INSERT INTO cosmetics VALUES 
(1, 'Lipstick', 'Maybelline', 'Makeup', 10.99, 100, 4.5, 80, '2023-01-01', 'USA'),
(2, 'Foundation', 'L\'Oreal', 'Makeup1', 15.50, 120, 4.7, 90, '2023-02-01', 'France'),
(3, 'Eyeliner', 'Lakme', 'Makeup2', 8.99, 150, 4.3, 110, '2023-03-01', 'India'),
(4, 'Perfume', 'Dior', 'Fragrance', 55.00, 50, 4.8, 30, '2023-04-01', 'France'),
(5, 'Nail Polish', 'Revlon', 'Makeup3', 5.99, 200, 4.1, 170, '2023-05-01', 'USA'),
(6, 'Shampoo', 'Pantene', 'Haircare1', 12.50, 180, 4.4, 160, '2023-06-01', 'USA'),
(7, 'Conditioner', 'Sunsilk', 'Haircare2', 11.50, 160, 4.2, 140, '2023-07-01', 'India'),
(8, 'Face Wash', 'Nivea', 'Skincare1', 9.99, 130, 4.6, 100, '2023-08-01', 'Germany'),
(9, 'Body Lotion', 'Vaseline', 'Skincare2', 7.99, 140, 4.3, 120, '2023-09-01', 'USA'),
(10, 'Hair Oil', 'Dabur', 'Haircare3', 6.99, 170, 4.5, 130, '2023-10-01', 'India'),
(11, 'Sunscreen', 'Neutrogena', 'Skincare3', 14.99, 100, 4.7, 90, '2023-11-01', 'USA'),
(12, 'Soap', 'Dove', 'Skincare4', 3.99, 250, 4.2, 220, '2023-12-01', 'UK'),
(13, 'Serum', 'The Ordinary', 'Skincare5', 25.00, 80, 4.9, 60, '2023-06-01', 'Canada'),
(14, 'Moisturizer', 'Cetaphil', 'Skincare6', 13.50, 90, 4.6, 75, '2023-07-01', 'USA'),
(15, 'Face Mask', 'Innisfree', 'Skincare7', 9.50, 110, 4.5, 95, '2023-08-01', 'Korea'),
(16, 'Lip Balm', 'Nivea1', 'Skincare8', 2.99, 300, 4.3, 270, '2023-09-01', 'Germany'),
(17, 'Compact Powder', 'MAC', 'Makeup9', 20.00, 70, 4.8, 50, '2023-10-01', 'USA'),
(18, 'Hair Spray', 'TRESemmé', 'Haircare5', 8.50, 90, 4.4, 65, '2023-11-01', 'UK'),
(19, 'Face Toner', 'Himalaya', 'Skincare10', 5.99, 150, 4.1, 140, '2023-12-01', 'India'),
(20, 'Eyebrow Pencil', 'Nykaa', 'Makeup10', 4.99, 200, 4.0, 180, '2023-01-01', 'India');

SELECT * FROM cosmetics;

ALTER TABLE cosmetics ADD COLUMN discount_percent DECIMAL(5,2);

UPDATE cosmetics SET discount_percent=5 WHERE product_id=1;
UPDATE cosmetics SET discount_percent=10 WHERE product_id=2;
UPDATE cosmetics SET discount_percent=15 WHERE product_id=3;
UPDATE cosmetics SET discount_percent=7 WHERE product_id=4;
UPDATE cosmetics SET discount_percent=12 WHERE product_id=5;
UPDATE cosmetics SET discount_percent=6 WHERE product_id=6;
UPDATE cosmetics SET discount_percent=9 WHERE product_id=7;
UPDATE cosmetics SET discount_percent=8 WHERE product_id=8;
UPDATE cosmetics SET discount_percent=11 WHERE product_id=9;
UPDATE cosmetics SET discount_percent=14 WHERE product_id=10;
UPDATE cosmetics SET discount_percent=4 WHERE product_id=11;
UPDATE cosmetics SET discount_percent=3 WHERE product_id=12;
UPDATE cosmetics SET discount_percent=20 WHERE product_id=13;
UPDATE cosmetics SET discount_percent=15 WHERE product_id=14;
UPDATE cosmetics SET discount_percent=5 WHERE product_id=15;
UPDATE cosmetics SET discount_percent=7 WHERE product_id=16;
UPDATE cosmetics SET discount_percent=6 WHERE product_id=17;
UPDATE cosmetics SET discount_percent=10 WHERE product_id=18;
UPDATE cosmetics SET discount_percent=9 WHERE product_id=19;
UPDATE cosmetics SET discount_percent=13 WHERE product_id=20;

SELECT SUM(stock_quantity) AS total_stock FROM cosmetics;

SELECT AVG(price) AS avg_price FROM cosmetics;

SELECT MAX(rating) AS max_rating, MIN(rating) AS min_rating FROM cosmetics;

SELECT COUNT(product_id) AS total_products FROM cosmetics;

SELECT AVG(price) AS avg_price FROM cosmetics
GROUP BY category;

SELECT SUM(sold_units) AS total_sold FROM cosmetics
GROUP BY brand_name;

SELECT COUNT(product_id) AS product_count FROM cosmetics
GROUP BY category;

SELECT AVG(price) AS avg_price FROM cosmetics
GROUP BY category
HAVING AVG(price) > 10;

SELECT SUM(sold_units) AS total_sold FROM cosmetics
GROUP BY brand_name
HAVING SUM(sold_units) > 500;

SELECT COUNT(product_id) AS product_count FROM cosmetics
GROUP BY category
HAVING COUNT(product_id) > 3;

CREATE TABLE Student_info(Stu_id int not null unique,
stu_name varchar(30), 
stu_dept varchar(20),
stu_marks int,check(stu_marks>18 and stu_marks<50 ));

INSERT INTO Student_info VALUES (1,'Hema','AIML',12);

INSERT INTO Student_info VALUES (1,'Hema','AIML',20);