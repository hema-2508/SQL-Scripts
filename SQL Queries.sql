
CREATE DATABASE MyDatabase;
USE MyDatabase;


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50),
    Manager VARCHAR(50),
    Location VARCHAR(50),
    EmployeeCount INT,
    Budget DECIMAL(12,2)
);
CREATE TABLE Department (
    DepartmentID INT,
    DepartmentName VARCHAR(50),
    Manager VARCHAR(50),
    Location VARCHAR(50),
    EmployeeCount INT,
    Budget DECIMAL(12,2)
);

ALTER TABLE Department ADD Branch VARCHAR(20);
ALTER TABLE Department ADD Annual_income bigint;
ALTER TABLE Department DROP COLUMN Budget;
ALTER TABLE Department RENAME COLUMN DepartmentName TO D_name;
ALTER TABLE Department RENAME COLUMN DepartmentID TO D_ID;
ALTER TABLE Department RENAME COLUMN EmployeeCount to E_count;
ALTER TABLE Department MODIFY COLUMN D_name VARCHAR(20);
ALTER TABLE Department MODIFY COLUMN E_count bigint;

ALTER TABLE Department MODIFY COLUMN Manager varchar(20);


select * from Department;
CREATE DATABASE XWorkZ;
USE XWorkZ;
CREATE TABLE Day1(
Id int,
Java boolean, 
Timing timestamp,
Location varchar(10),
Mentor varchar(10));
CREATE table Bike(Id int, Bike_name varchar(10), Model_no varchar(10),Owner_name varchar(10), Engine_no bigint);
CREATE TABLE Rice(
Price int,
Rice_name varchar(10), 
Rice_quantity int,
Rice_type varchar(10)
);
USE xworkz;
ALTER TABLE Rice ADD Rice_origin VARCHAR(20);
ALTER TABLE Rice ADD Rice_quality VARCHAR(20);
ALTER TABLE Rice DROP COLUMN Rice_type;
ALTER TABLE Rice RENAME COLUMN Rice_name TO R_name;
ALTER TABLE Rice RENAME COLUMN Rice_quantity TO R_quantity;
ALTER TABLE Rice RENAME COLUMN Price to Rice_price;
select * from Rice;
ALTER TABLE Rice MODIFY COLUMN R_name VARCHAR(50);
ALTER TABLE Rice MODIFY COLUMN R_quantity FLOAT;

ALTER TABLE Rice
MODIFY COLUMN Rice_price varchar(10);
DESC Rice;
DROP table bike;

CREATE TABLE Bike (
    Price INT,
    Bike_name VARCHAR(10),
    Bike_quantity INT,
    Bike_type VARCHAR(10)
);

USE xworkz;

ALTER TABLE Bike ADD Bike_origin VARCHAR(20);
ALTER TABLE Bike ADD Bike_quality VARCHAR(20);
ALTER TABLE Bike DROP COLUMN Bike_type;
ALTER TABLE Bike RENAME COLUMN Bike_name TO B_name;
ALTER TABLE Bike RENAME COLUMN Bike_quantity TO B_quantity;
ALTER TABLE Bike RENAME COLUMN Price TO Bike_price;
SELECT * FROM Bike;
ALTER TABLE Bike MODIFY COLUMN B_name VARCHAR(50);
ALTER TABLE Bike MODIFY COLUMN B_quantity FLOAT;
ALTER TABLE Bike MODIFY COLUMN Bike_price VARCHAR(10);


DESC Bike;
CREATE TABLE hospital_info(
hospital_name varchar(10),
hospital_loc varchar(10),
hospital_type varchar(10), 
no_doctors int,
hospital_number long);

CREATE TABLE countries_info(
country_name varchar(10),
capital varchar(10),
official_lang varchar(10),
population long,
developed boolean
);
CREATE TABLE state_info(
state_name varchar(10),
fam_food varchar(10),
languages varchar(10),
population long,
farming boolean,
no_of_district int
);
ALTER TABLE hospital_info ADD COLUMN mail_id varchar(25);
DESC hospital_info;
SELECT * FROM state_info;
INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district)
VALUES ('Karnataka', 'BisiBele', 'Kannada', 69000000, TRUE, 31);
INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district)
VALUES ('TamilNadu', 'Dosa', 'Tamil', 78000000, TRUE, 38);
INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Kerala', 'Puttu', 'Malayalam', 35000000, TRUE, 14);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Maharas', 'VadaPav', 'Marathi', 124000000, TRUE, 36);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Gujarat', 'Dhokla', 'Gujarati', 64000000, TRUE, 33);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Rajasthan', 'DalBati', 'Rajasthani', 81000000, TRUE, 50);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Punjab', 'MakkiRoti', 'Punjabi', 31000000, TRUE, 23);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('WestBengal', 'Rosogolla', 'Bengali', 97000000, TRUE, 23);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('UttarPrade', 'Chaat', 'Hindi', 231000000, TRUE, 75);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('MadhyaPrad', 'Poha', 'Hindi', 85000000, TRUE, 55);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Odisha', 'Dalma', 'Odia', 46000000, TRUE, 30);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Bihar', 'LittiChok', 'Hindi', 130000000, TRUE, 38);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Assam', 'MasorTeng', 'Assamese', 36000000, TRUE, 35);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Jharkhand', 'Thekua', 'Hindi', 40000000, TRUE, 24);

INSERT INTO state_info (state_name, fam_food, languages, population, farming, no_of_district) 
VALUES ('Telangana', 'Hyderabad', 'Telugu', 40000000, TRUE, 33);

CREATE TABLE countries_info(
country_name varchar(10),
capital varchar(10),
official_lang varchar(10),
population long,
developed boolean
);
INSERT INTO countries_info(country_name,capital,official_lang,population,developed) 
VALUES ('India', 'Dehli','Hindi',1400000000,false);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('USA', 'Washington', 'English', 331000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('Canada', 'Ottawa', 'English', 38000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('Germany', 'Berlin', 'German', 83000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('France', 'Paris', 'French', 67000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('UK', 'London', 'English', 67000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('India', 'New Delhi', 'Hindi', 1400000000, FALSE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('Japan', 'Tokyo', 'Japanese', 126000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('China', 'Beijing', 'Mandarin', 1410000000, FALSE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('Brazil', 'Brasilia', 'Portuguese', 213000000, FALSE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('Russia', 'Moscow', 'Russian', 144000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('Italy', 'Rome', 'Italian', 59000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('Spain', 'Madrid', 'Spanish', 47000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('Australia', 'Canberra', 'English', 26000000, TRUE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('Mexico', 'MexicoCty', 'Spanish', 126000000, FALSE);

INSERT INTO countries_info (country_name, capital, official_lang, population, developed) 
VALUES ('SouthKorea', 'Seoul', 'Korean', 52000000, TRUE);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Apollo', 'Bangalore', 'Private', 250, 9845012345);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Fortis', 'Bangalore', 'Private', 300, 9845023456);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Manipal', 'Bangalore', 'Private', 400, 9845034567);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Narayana', 'Bangalore', 'Private', 500, 9845045678);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Columbia', 'Bangalore', 'Private', 350, 9845056789);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Aster', 'Bangalore', 'Private', 270, 9845067890);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Sparsh', 'Bangalore', 'Private', 220, 9845078901);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('StJohns', 'Bangalore', 'Govt', 600, 9845089012);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Jayadeva', 'Bangalore', 'Govt', 500, 9845090123);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('KCGen', 'Bangalore', 'Govt', 350, 9845101234);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Bowring', 'Bangalore', 'Govt', 400, 9845112345);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('Victoria', 'Bangalore', 'Govt', 450, 9845123456);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('NIMHANS', 'Bangalore', 'Govt', 550, 9845134567);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('ESI', 'Bangalore', 'Govt', 300, 9845145678);

INSERT INTO hospital_info (hospital_name, hospital_loc, hospital_type, no_doctors, hospital_number) 
VALUES ('BGS', 'Bangalore', 'Private', 320, 9845156789);

SELECT * FROM hospital_info;
SELECT * FROM hospital_info WHERE hospital_type='Private';
SELECT * FROM hospital_info WHERE hospital_type='Private'AND no_doctors>300;
SELECT * FROM hospital_info WHERE hospital_type='Govt'OR no_doctors>300;

SELECT * FROM state_info;
SELECT * FROM state_info WHERE languages='Hindi' AND no_of_district>35;
SELECT * FROM state_info WHERE languages='Hindi' OR population>'78000000';

SELECT * FROM countries_info;
SELECT * FROM countries_info WHERE official_lang='English' AND developed=1;
SELECT * FROM state_info WHERE languages='Hindi' OR languages='English';

SELECT * FROM countries_info;
UPDATE countries_info set country_name='US' where CAPITAL='TOKYO';