CREATE TABLE furniture_info (
    id INT PRIMARY KEY,
    name VARCHAR(50) ,
    type VARCHAR(50) ,
    color VARCHAR(30),
    size VARCHAR(30),
    weight DECIMAL(5,2),
    material ENUM('Wood', 'Plastic', 'Metal', 'Glass') ,
    price DECIMAL(10,2),
    has_drawers BOOLEAN,
    made_in VARCHAR(50),
    polish VARCHAR(50)
);

ALTER TABLE furniture_info MODIFY id INT UNIQUE NOT NULL;

ALTER TABLE furniture_info MODIFY name VARCHAR(50) UNIQUE NOT NULL;

ALTER TABLE furniture_info MODIFY type VARCHAR(50) UNIQUE NOT NULL;

ALTER TABLE furniture_info MODIFY price DECIMAL(10,2) UNIQUE NOT NULL;

ALTER TABLE furniture_info MODIFY material ENUM('Wood', 'Plastic', 'Metal', 'Glass') NOT NULL;

ALTER TABLE furniture_info MODIFY has_drawers BOOLEAN NOT NULL;

ALTER TABLE furniture_info ADD CONSTRAINT check_price CHECK (price > 0);

ALTER TABLE furniture_info ADD CONSTRAINT check_weight CHECK (weight >= 0);

SELECT * FROM furniture_info;

INSERT INTO furniture_info (id, name, type, color, size, weight, material, price, has_drawers, made_in, polish)
VALUES 
(1, 'Tiny Chair', 'Chair', 'Red', 'Small', 5.50, 'Wood', 1500.00, FALSE, 'India', 'Glossy'),
(2, 'Play Table', 'Table', 'Blue', 'Medium', 10.20, 'Plastic', 2000.00, FALSE, 'USA', 'Matte'),
(3, 'Kids Bed', 'Bed', 'Green', 'Large', 25.75, 'Wood', 5000.00, TRUE, 'Canada', 'Satin'),
(4, 'Toy Box', 'Storage', 'Yellow', 'Medium', 8.30, 'Plastic', 1200.00, TRUE, 'Germany', 'Matte'),
(5, 'Study Desk', 'Desk', 'White', 'Large', 15.00, 'Metal', 3500.00, FALSE, 'UK', 'Glossy'),
(6, 'Rocking Horse', 'Rocking Chair', 'Brown', 'Small', 6.40, 'Wood', 1800.00, FALSE, 'France', 'Satin'),
(7, 'Bookshelf', 'Shelf', 'Black', 'Medium', 12.50, 'Wood', 2500.00, TRUE, 'Italy', 'Matte'),
(8, 'Dollhouse', 'Toy Set', 'Pink', 'Small', 4.75, 'Plastic', 900.00, FALSE, 'Japan', 'Glossy'),
(9, 'Bunk Bed', 'Bunk', 'Gray', 'Large', 30.60, 'Metal', 7000.00, TRUE, 'Australia', 'Satin'),
(10, 'Storage Ottoman', 'Ottoman', 'Beige', 'Medium', 9.90, 'Wood', 2200.00, TRUE, 'China', 'Matte'),
(11, 'Toy Cabinet', 'Cabinet', 'Orange', 'Large', 20.00, 'Plastic', 2800.00, TRUE, 'Mexico', 'Glossy'),
(12, 'Lego Table', 'Activity Table', 'Multicolor', 'Medium', 7.80, 'Plastic', 1600.00, FALSE, 'Brazil', 'Satin'),
(13, 'Nap Cot', 'Cot', 'Sky Blue', 'Small', 6.25, 'Metal', 2700.00, FALSE, 'Russia', 'Matte'),
(14, 'Reading Nook', 'Lounge Chair', 'Teal', 'Medium', 11.30, 'Wood', 3200.00, FALSE, 'Netherlands', 'Glossy'),
(15, 'Play Kitchen', 'Kitchen Set', 'Purple', 'Large', 22.40, 'Plastic', 4500.00, TRUE, 'South Korea', 'Satin');

ALTER TABLE furniture_info ADD COLUMN age_group VARCHAR(20) ;

ALTER TABLE furniture_info ADD COLUMN assembly_required BOOLEAN ;

UPDATE furniture_info SET age_group = 'Toddlers' WHERE id = 1;
UPDATE furniture_info SET age_group = 'Kids' WHERE id = 2;
UPDATE furniture_info SET age_group = 'Teens' WHERE id = 3;
UPDATE furniture_info SET age_group = 'Kids' WHERE id = 4;
UPDATE furniture_info SET age_group = 'Teens' WHERE id = 5;
UPDATE furniture_info SET age_group = 'Toddlers' WHERE id = 6;
UPDATE furniture_info SET age_group = 'Kids' WHERE id = 7;
UPDATE furniture_info SET age_group = 'Toddlers' WHERE id = 8;
UPDATE furniture_info SET age_group = 'Teens' WHERE id = 9;
UPDATE furniture_info SET age_group = 'Kids' WHERE id = 10;
UPDATE furniture_info SET age_group = 'Kids' WHERE id = 11;
UPDATE furniture_info SET age_group = 'Toddlers' WHERE id = 12;
UPDATE furniture_info SET age_group = 'Teens' WHERE id = 13;
UPDATE furniture_info SET age_group = 'Kids' WHERE id = 14;
UPDATE furniture_info SET age_group = 'Toddlers' WHERE id = 15;

UPDATE furniture_info SET assembly_required = TRUE WHERE id = 1;
UPDATE furniture_info SET assembly_required = FALSE WHERE id = 2;
UPDATE furniture_info SET assembly_required = TRUE WHERE id = 3;
UPDATE furniture_info SET assembly_required = FALSE WHERE id = 4;
UPDATE furniture_info SET assembly_required = TRUE WHERE id = 5;
UPDATE furniture_info SET assembly_required = FALSE WHERE id = 6;
UPDATE furniture_info SET assembly_required = TRUE WHERE id = 7;
UPDATE furniture_info SET assembly_required = FALSE WHERE id = 8;
UPDATE furniture_info SET assembly_required = TRUE WHERE id = 9;
UPDATE furniture_info SET assembly_required = FALSE WHERE id = 10;
UPDATE furniture_info SET assembly_required = TRUE WHERE id = 11;
UPDATE furniture_info SET assembly_required = FALSE WHERE id = 12;
UPDATE furniture_info SET assembly_required = TRUE WHERE id = 13;
UPDATE furniture_info SET assembly_required = FALSE WHERE id = 14;
UPDATE furniture_info SET assembly_required = TRUE WHERE id = 15;

CREATE TABLE electronic_gadgets (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    type VARCHAR(50),
    brand VARCHAR(50),
    color VARCHAR(30),
    weight DECIMAL(5,2),
    battery_life INT,
    material ENUM('Plastic', 'Metal', 'Glass'),
    price DECIMAL(10,2),
    made_in VARCHAR(50)
);

ALTER TABLE electronic_gadgets MODIFY id INT UNIQUE NOT NULL;
ALTER TABLE electronic_gadgets MODIFY name VARCHAR(50) UNIQUE NOT NULL;
ALTER TABLE electronic_gadgets MODIFY type VARCHAR(50) UNIQUE NOT NULL;
ALTER TABLE electronic_gadgets MODIFY price DECIMAL(10,2) UNIQUE NOT NULL;
ALTER TABLE electronic_gadgets MODIFY material ENUM('Plastic', 'Metal', 'Glass') NOT NULL;
ALTER TABLE electronic_gadgets MODIFY battery_life INT NOT NULL;

ALTER TABLE electronic_gadgets ADD CONSTRAINT check_price CHECK (price > 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT check_weight CHECK (weight >= 0);

Select * from electronic_gadgets;

INSERT INTO electronic_gadgets (id, name, type, brand, color, weight, battery_life, material, price, made_in) 
VALUES 
(1, 'Smart Watch', 'Wearable', 'Apple', 'Black', 0.45, 24, 'Metal', 25001.00, 'USA'),
(2, 'Kids Tablet', 'Tablet', 'Samsung', 'Blue', 0.75, 12, 'Plastic', 12002.00, 'South Korea'),
(3, 'Game Console', 'Console', 'Sony', 'White', 2.5, 8, 'Plastic', 40003.00, 'Japan'),
(4, 'Toy Camera', 'Camera', 'Fisher-Price', 'Yellow', 0.50, 10, 'Plastic', 50004.00, 'China'),
(5, 'Bluetooth Speaker', 'Speaker', 'JBL', 'Red', 0.85, 15, 'Plastic', 70005.00, 'USA'),
(6, 'Kids Laptop', 'Laptop', 'LeapFrog', 'Green', 1.2, 6, 'Plastic', 15006.00, 'Germany'),
(7, 'VR Headset', 'VR Device', 'Oculus', 'Black', 1.1, 5, 'Plastic', 30007.00, 'USA'),
(8, 'Toy Drone', 'Drone', 'DJI', 'Gray', 1.4, 20, 'Metal', 25008.00, 'China'),
(9, 'E-Reader', 'E-Book', 'Amazon', 'Black', 0.35, 30, 'Plastic', 100010.00, 'USA'),
(10, 'Kids Phone', 'Phone', 'Nokia', 'Pink', 0.50, 48, 'Plastic', 80011.00, 'Finland'),
(11, 'Electric Scooter', 'Scooter', 'Razor', 'Blue', 5.0, 10, 'Metal', 200012.00, 'USA'),
(12, 'Digital Drawing Pad', 'Drawing Tablet', 'Wacom', 'White', 0.90, 8, 'Plastic', 120013.00, 'Japan'),
(13, 'Music Player', 'MP3 Player', 'Sony', 'Silver', 0.20, 40, 'Metal', 60014.00, 'Japan'),
(14, 'Kids Smart Ring', 'Smart Ring', 'Oura', 'Purple', 0.05, 72, 'Metal', 180015.00, 'Finland'),
(15, 'Handheld Gaming', 'Gaming Device', 'Nintendo', 'Red', 0.55, 15, 'Plastic', 200016.00, 'Japan');

ALTER TABLE electronic_gadgets ADD COLUMN age_group VARCHAR(20) ;
ALTER TABLE electronic_gadgets ADD COLUMN warranty_period INT ;

UPDATE electronic_gadgets SET age_group = 'Toddlers' WHERE id = 1;
UPDATE electronic_gadgets SET age_group = 'Kids' WHERE id = 2;
UPDATE electronic_gadgets SET age_group = 'Teens' WHERE id = 3;
UPDATE electronic_gadgets SET age_group = 'Kids' WHERE id = 4;
UPDATE electronic_gadgets SET age_group = 'Teens' WHERE id = 5;
UPDATE electronic_gadgets SET age_group = 'Toddlers' WHERE id = 6;
UPDATE electronic_gadgets SET age_group = 'Kids' WHERE id = 7;
UPDATE electronic_gadgets SET age_group = 'Toddlers' WHERE id = 8;
UPDATE electronic_gadgets SET age_group = 'Teens' WHERE id = 9;
UPDATE electronic_gadgets SET age_group = 'Kids' WHERE id = 10;
UPDATE electronic_gadgets SET age_group = 'Kids' WHERE id = 11;
UPDATE electronic_gadgets SET age_group = 'Toddlers' WHERE id = 12;
UPDATE electronic_gadgets SET age_group = 'Teens' WHERE id = 13;
UPDATE electronic_gadgets SET age_group = 'Kids' WHERE id = 14;
UPDATE electronic_gadgets SET age_group = 'Toddlers' WHERE id = 15;

UPDATE electronic_gadgets SET warranty_period = 12 WHERE id = 1;
UPDATE electronic_gadgets SET warranty_period = 24 WHERE id = 2;
UPDATE electronic_gadgets SET warranty_period = 36 WHERE id = 3;
UPDATE electronic_gadgets SET warranty_period = 18 WHERE id = 4;
UPDATE electronic_gadgets SET warranty_period = 24 WHERE id = 5;
UPDATE electronic_gadgets SET warranty_period = 12 WHERE id = 6;
UPDATE electronic_gadgets SET warranty_period = 24 WHERE id = 7;
UPDATE electronic_gadgets SET warranty_period = 12 WHERE id = 8;
UPDATE electronic_gadgets SET warranty_period = 36 WHERE id = 9;
UPDATE electronic_gadgets SET warranty_period = 24 WHERE id = 10;
UPDATE electronic_gadgets SET warranty_period = 18 WHERE id = 11;
UPDATE electronic_gadgets SET warranty_period = 12 WHERE id = 12;
UPDATE electronic_gadgets SET warranty_period = 36 WHERE id = 13;
UPDATE electronic_gadgets SET warranty_period = 24 WHERE id = 14;
UPDATE electronic_gadgets SET warranty_period = 12 WHERE id = 15;

CREATE TABLE restaurant_info (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    cuisine_type ENUM('Italian', 'Chinese', 'Indian', 'Mexican', 'French', 'Japanese'),
    location VARCHAR(100),
    rating DECIMAL(2,1),
    seating_capacity INT,
    price_range VARCHAR(20),
    is_open BOOLEAN,
    opening_time TIME,
    closing_time TIME
);

ALTER TABLE restaurant_info MODIFY id INT UNIQUE NOT NULL;

ALTER TABLE restaurant_info MODIFY name VARCHAR(50) UNIQUE NOT NULL;

ALTER TABLE restaurant_info MODIFY location VARCHAR(100) NOT NULL;

ALTER TABLE restaurant_info MODIFY rating DECIMAL(2,1) NOT NULL;

ALTER TABLE restaurant_info MODIFY is_open BOOLEAN NOT NULL;

ALTER TABLE restaurant_info MODIFY cuisine_type ENUM('Italian', 'Chinese', 'Indian', 'Mexican', 'French', 'Japanese') NOT NULL;

ALTER TABLE restaurant_info ADD CONSTRAINT check_rating CHECK (rating BETWEEN 0 AND 5);

ALTER TABLE restaurant_info ADD CONSTRAINT check_capacity CHECK (seating_capacity > 0);

INSERT INTO restaurant_info (id, name, cuisine_type, location, rating, seating_capacity, price_range, is_open, opening_time, closing_time)
VALUES
(1, 'Little Bites', 'Italian', 'New York', 4.2, 50, '$$', TRUE, '09:00:00', '22:00:00'),
(2, 'Dragon Feast', 'Chinese', 'Los Angeles', 4.5, 60, '$$$', TRUE, '10:00:00', '23:00:00'),
(3, 'Spice Haven', 'Indian', 'Chicago', 4.0, 80, '$$', TRUE, '08:00:00', '21:00:00'),
(4, 'Taco Town', 'Mexican', 'San Francisco', 4.3, 40, '$', FALSE, '11:00:00', '20:00:00'),
(5, 'Paris Delight', 'French', 'Seattle', 4.1, 55, '$$$$', TRUE, '07:00:00', '22:00:00'),
(6, 'Sushi Zen', 'Japanese', 'Boston', 4.8, 70, '$$$', TRUE, '12:00:00', '23:30:00'),
(7, 'Pasta House', 'Italian', 'Denver', 4.4, 65, '$$', TRUE, '10:30:00', '21:30:00'),
(8, 'Great Wall', 'Chinese', 'Houston', 4.2, 85, '$$', FALSE, '09:00:00', '22:00:00'),
(9, 'Curry Palace', 'Indian', 'Atlanta', 4.5, 90, '$$$', TRUE, '08:30:00', '21:30:00'),
(10, 'Burrito Bliss', 'Mexican', 'Miami', 4.0, 45, '$$', FALSE, '11:00:00', '20:00:00'),
(11, 'French Kiss', 'French', 'Las Vegas', 4.7, 60, '$$$$', TRUE, '07:30:00', '22:30:00'),
(12, 'Tokyo Bites', 'Japanese', 'Philadelphia', 4.6, 75, '$$$', TRUE, '12:00:00', '23:00:00'),
(13, 'Gourmet Italia', 'Italian', 'Dallas', 4.3, 55, '$$$', TRUE, '10:00:00', '21:00:00'),
(14, 'Peking Express', 'Chinese', 'Phoenix', 4.1, 70, '$$', TRUE, '09:30:00', '22:30:00'),
(15, 'Masala Magic', 'Indian', 'San Diego', 4.4, 85, '$$', TRUE, '08:00:00', '21:30:00');

ALTER TABLE restaurant_info ADD COLUMN delivery_available BOOLEAN ;
ALTER TABLE restaurant_info ADD COLUMN owner_name VARCHAR(50) ;

UPDATE restaurant_info SET delivery_available = TRUE WHERE id = 1;
UPDATE restaurant_info SET delivery_available = TRUE WHERE id = 3;
UPDATE restaurant_info SET delivery_available = TRUE WHERE id = 5;
UPDATE restaurant_info SET delivery_available = TRUE WHERE id = 7;
UPDATE restaurant_info SET delivery_available = TRUE WHERE id = 9;
UPDATE restaurant_info SET delivery_available = TRUE WHERE id = 11;
UPDATE restaurant_info SET delivery_available = TRUE WHERE id = 13;
UPDATE restaurant_info SET delivery_available = TRUE WHERE id = 15;
UPDATE restaurant_info SET delivery_available = FALSE WHERE id = 2;
UPDATE restaurant_info SET delivery_available = FALSE WHERE id = 4;
UPDATE restaurant_info SET delivery_available = FALSE WHERE id = 6;
UPDATE restaurant_info SET delivery_available = FALSE WHERE id = 8;
UPDATE restaurant_info SET delivery_available = FALSE WHERE id = 10;
UPDATE restaurant_info SET delivery_available = FALSE WHERE id = 12;
UPDATE restaurant_info SET delivery_available = FALSE WHERE id = 14;

UPDATE restaurant_info SET owner_name = 'Ramesh Kumar' WHERE id = 1;
UPDATE restaurant_info SET owner_name = 'Vikram Shetty' WHERE id = 2;
UPDATE restaurant_info SET owner_name = 'Akira Tanaka' WHERE id = 3;
UPDATE restaurant_info SET owner_name = 'Manoj Gupta' WHERE id = 4;
UPDATE restaurant_info SET owner_name = 'Carlos Mendoza' WHERE id = 5;
UPDATE restaurant_info SET owner_name = 'Pierre Martin' WHERE id = 6;
UPDATE restaurant_info SET owner_name = 'Aditya Rao' WHERE id = 7;
UPDATE restaurant_info SET owner_name = 'Rahul Sharma' WHERE id = 8;
UPDATE restaurant_info SET owner_name = 'Michel Dupont' WHERE id = 9;
UPDATE restaurant_info SET owner_name = 'Ricardo Sanchez' WHERE id = 10;
UPDATE restaurant_info SET owner_name = 'Takashi Yamamoto' WHERE id = 11;
UPDATE restaurant_info SET owner_name = 'Zhang Wei' WHERE id = 12;
UPDATE restaurant_info SET owner_name = 'Naveen Kumar' WHERE id = 13;
UPDATE restaurant_info SET owner_name = 'Emily Carter' WHERE id = 14;
UPDATE restaurant_info SET owner_name = 'Neha Iyer' WHERE id = 15;

CREATE TABLE olympics_info (
    id INT,
    event_name VARCHAR(50),
    sport ENUM('Athletics', 'Swimming', 'Gymnastics', 'Cycling', 'Weightlifting', 'Wrestling'),
    country VARCHAR(50),
    athlete_name VARCHAR(50),
    medal VARCHAR(10),
    score DECIMAL(5,2),
    year INT,
    venue VARCHAR(50),
    world_record BOOLEAN
);

ALTER TABLE olympics_info MODIFY id INT UNIQUE NOT NULL;

ALTER TABLE olympics_info MODIFY event_name VARCHAR(50) UNIQUE NOT NULL;

ALTER TABLE olympics_info MODIFY athlete_name VARCHAR(50) NOT NULL;

ALTER TABLE olympics_info MODIFY sport ENUM('Athletics', 'Swimming', 'Gymnastics', 'Cycling', 'Weightlifting', 'Wrestling') NOT NULL;

ALTER TABLE olympics_info MODIFY year INT NOT NULL;

ALTER TABLE olympics_info MODIFY world_record BOOLEAN NOT NULL;

ALTER TABLE olympics_info ADD CONSTRAINT check_score CHECK (score >= 0);

ALTER TABLE olympics_info ADD CONSTRAINT check_year CHECK (year >= 1896);

INSERT INTO olympics_info (id, event_name, sport, country, athlete_name, medal, score, year, venue, world_record)
VALUES
(1, '100m Sprint', 'Athletics', 'USA', 'John Doe', 'Gold', 9.58, 2020, 'Tokyo', TRUE),
(2, '200m Freestyle', 'Swimming', 'Australia', 'Michael Scott', 'Silver', 1.44, 2016, 'Rio', FALSE),
(3, 'Vault', 'Gymnastics', 'Russia', 'Anna Petrova', 'Gold', 15.2, 2020, 'Tokyo', FALSE),
(4, 'Track Cycling', 'Cycling', 'UK', 'James Blake', 'Bronze', 4.12, 2016, 'Rio', FALSE),
(5, 'Clean & Jerk', 'Weightlifting', 'China', 'Wang Li', 'Gold', 225.0, 2012, 'London', TRUE),
(6, 'Freestyle Wrestling', 'Wrestling', 'India', 'Rajesh Kumar', 'Silver', 86.4, 2016, 'Rio', FALSE),
(7, '400m Hurdles', 'Athletics', 'Jamaica', 'Chris Johnson', 'Bronze', 47.85, 2020, 'Tokyo', FALSE),
(8, 'Diving 10m', 'Swimming', 'Germany', 'Lisa Fischer', 'Gold', 587.6, 2012, 'London', FALSE),
(9, 'Floor Exercise', 'Gymnastics', 'Japan', 'Hiro Tanaka', 'Silver', 14.7, 2016, 'Rio', FALSE),
(10, 'Mountain Biking', 'Cycling', 'France', 'Pierre Morel', 'Gold', 1.29, 2020, 'Tokyo', FALSE),
(11, 'Snatch', 'Weightlifting', 'Greece', 'Alexandros Nikos', 'Silver', 210.5, 2016, 'Rio', TRUE),
(12, 'Greco-Roman Wrestling', 'Wrestling', 'Turkey', 'Mehmet Yilmaz', 'Gold', 82.7, 2020, 'Tokyo', FALSE),
(13, '5000m', 'Athletics', 'Kenya', 'Daniel Kiprotich', 'Gold', 12.57, 2020, 'Tokyo', TRUE),
(14, '200m Backstroke', 'Swimming', 'USA', 'Ryan Miller', 'Bronze', 1.56, 2016, 'Rio', FALSE),
(15, 'Balance Beam', 'Gymnastics', 'Canada', 'Emily Carter', 'Silver', 14.3, 2012, 'London', FALSE);

ALTER TABLE olympics_info ADD COLUMN age_group VARCHAR(20);
ALTER TABLE olympics_info ADD COLUMN coach_name VARCHAR(50);

UPDATE olympics_info SET age_group = 'Teen' WHERE id = 1;
UPDATE olympics_info SET age_group = 'Adult' WHERE id = 2;
UPDATE olympics_info SET age_group = 'Teen' WHERE id = 3;
UPDATE olympics_info SET age_group = 'Adult' WHERE id = 4;
UPDATE olympics_info SET age_group = 'Adult' WHERE id = 5;
UPDATE olympics_info SET age_group = 'Teen' WHERE id = 6;
UPDATE olympics_info SET age_group = 'Adult' WHERE id = 7;
UPDATE olympics_info SET age_group = 'Teen' WHERE id = 8;
UPDATE olympics_info SET age_group = 'Adult' WHERE id = 9;
UPDATE olympics_info SET age_group = 'Teen' WHERE id = 10;
UPDATE olympics_info SET age_group = 'Adult' WHERE id = 11;
UPDATE olympics_info SET age_group = 'Teen' WHERE id = 12;
UPDATE olympics_info SET age_group = 'Adult' WHERE id = 13;
UPDATE olympics_info SET age_group = 'Teen' WHERE id = 14;
UPDATE olympics_info SET age_group = 'Adult' WHERE id = 15;

UPDATE olympics_info SET coach_name = 'David Smith' WHERE id = 1;
UPDATE olympics_info SET coach_name = 'Lisa Brown' WHERE id = 2;
UPDATE olympics_info SET coach_name = 'Sergei Ivanov' WHERE id = 3;
UPDATE olympics_info SET coach_name = 'John Richards' WHERE id = 4;
UPDATE olympics_info SET coach_name = 'Li Wei' WHERE id = 5;
UPDATE olympics_info SET coach_name = 'Raj Malhotra' WHERE id = 6;
UPDATE olympics_info SET coach_name = 'Michael Johnson' WHERE id = 7;
UPDATE olympics_info SET coach_name = 'Hans Schmidt' WHERE id = 8;
UPDATE olympics_info SET coach_name = 'Hideo Yamamoto' WHERE id = 9;
UPDATE olympics_info SET coach_name = 'Jacques Dupont' WHERE id = 10;
UPDATE olympics_info SET coach_name = 'Nikos Papadopoulos' WHERE id = 11;
UPDATE olympics_info SET coach_name = 'Mustafa Demir' WHERE id = 12;
UPDATE olympics_info SET coach_name = 'Eliud Kipchoge' WHERE id = 13;
UPDATE olympics_info SET coach_name = 'Tom Carter' WHERE id = 14;
UPDATE olympics_info SET coach_name = 'Sophia Williams' WHERE id = 15;

