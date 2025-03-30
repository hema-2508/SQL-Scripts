CREATE TABLE bmtc_details (
    bus_no VARCHAR(10) PRIMARY KEY,
    driver_name VARCHAR(50),
    conductor_name VARCHAR(50),
    route_from VARCHAR(50),
    route_to VARCHAR(50),
    total_seats INT,
    booked_seats INT,
    bus_type VARCHAR(20),
    departure_time TIME,
    ticket_price DECIMAL(6,2)
);

CREATE TABLE tourist_info (
    tourist_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    passport_no VARCHAR(20),
    nationality VARCHAR(30),
    age INT,
    travel_destination VARCHAR(50),
    travel_date DATE,
    return_date DATE,
    travel_mode VARCHAR(20),
    total_expense DECIMAL(8,2)
);

INSERT INTO bmtc_details VALUES
('BM101', 'Rajesh Kumar', 'Suresh Babu', 'Majestic', 'Whitefield', 50, 30, 'Volvo', '08:00', 60.00),
('BM102', 'Sanjay Naik', 'Arun Das', 'BTM Layout', 'Electronic City', 45, 25, 'AC', '09:30', 50.00),
('BM103', 'Mahesh R', 'Vikram P', 'KR Puram', 'Majestic', 48, 40, 'Non-AC', '07:00', 30.00),
('BM104', 'Naveen Reddy', 'Manoj Kumar', 'Banashankari', 'Marathahalli', 52, 38, 'Semi-Deluxe', '10:15', 45.00),
('BM105', 'Deepak J', 'Ravi N', 'Kengeri', 'Silk Board', 60, 55, 'Volvo', '06:45', 65.00),
('BM106', 'Sunil R', 'Dinesh P', 'Electronic City', 'Yeshwanthpur', 50, 45, 'AC', '08:50', 55.00),
('BM107', 'Ramesh T', 'Gopal K', 'Majestic', 'Mysore Road', 40, 32, 'Non-AC', '11:00', 35.00),
('BM108', 'Vijay Anand', 'Prakash R', 'Silk Board', 'KR Market', 55, 50, 'Deluxe', '09:15', 70.00),
('BM109', 'Aravind K', 'Shyam Sundar', 'Whitefield', 'BTM Layout', 48, 45, 'Volvo', '07:30', 60.00),
('BM110', 'Karthik G', 'Mahesh T', 'Hebbal', 'Marathahalli', 50, 47, 'Semi-Deluxe', '10:30', 50.00),
('BM111', 'Suresh C', 'Nandish H', 'Majestic', 'KR Puram', 55, 52, 'AC', '06:20', 55.00),
('BM112', 'Ganesh M', 'Mohan L', 'Banashankari', 'Electronic City', 60, 57, 'Volvo', '08:40', 65.00),
('BM113', 'Ravi Kumar', 'Raju S', 'Kengeri', 'BTM Layout', 50, 48, 'Non-AC', '07:10', 40.00),
('BM114', 'Dinesh B', 'Naveen J', 'Majestic', 'Yeshwanthpur', 45, 42, 'Deluxe', '09:50', 75.00),
('BM115', 'Harish R', 'Vinod P', 'Silk Board', 'KR Market', 48, 46, 'AC', '11:30', 55.00),
('BM116', 'Shankar S', 'Siddharth K', 'KR Puram', 'Mysore Road', 60, 58, 'Semi-Deluxe', '07:45', 50.00),
('BM117', 'Prashanth K', 'Jagadeesh M', 'BTM Layout', 'Banashankari', 55, 52, 'Volvo', '10:05', 60.00),
('BM118', 'Anand P', 'Sandeep L', 'Majestic', 'Silk Board', 52, 48, 'AC', '06:55', 50.00),
('BM119', 'Vikram C', 'Surya N', 'Electronic City', 'Kengeri', 50, 45, 'Non-AC', '08:25', 35.00),
('BM120', 'Manish R', 'Balaji S', 'Marathahalli', 'Whitefield', 60, 55, 'Deluxe', '09:40', 75.00);

INSERT INTO tourist_info VALUES
(1, 'Aarav Kapoor', 'A123456', 'Indian', 28, 'Singapore', '2025-04-10', '2025-04-20', 'Flight', 75000.00),
(2, 'Meera Iyer', 'B987654', 'Indian', 25, 'Dubai', '2025-05-15', '2025-05-25', 'Flight', 85000.00),
(3, 'Jacob Wilson', 'X567432', 'American', 35, 'Goa', '2025-06-05', '2025-06-12', 'Cruise', 50000.00),
(4, 'Lily Anderson', 'Y789123', 'British', 30, 'Paris', '2025-07-10', '2025-07-20', 'Flight', 120000.00),
(5, 'Vikram Sen', 'Z654789', 'Indian', 32, 'Thailand', '2025-08-15', '2025-08-25', 'Flight', 60000.00),
(6, 'Sara Thomas', 'C321456', 'Indian', 29, 'Maldives', '2025-09-12', '2025-09-22', 'Flight', 95000.00),
(7, 'Brandon Clark', 'D741852', 'Canadian', 27, 'London', '2025-10-05', '2025-10-15', 'Flight', 110000.00),
(8, 'Karthik Rao', 'E963852', 'Indian', 31, 'Bali', '2025-11-20', '2025-11-30', 'Flight', 70000.00),
(9, 'James Peterson', 'F753159', 'Australian', 40, 'Sydney', '2025-12-10', '2025-12-20', 'Flight', 130000.00),
(10, 'Anushka Nair', 'G852963', 'Indian', 26, 'Amsterdam', '2025-01-05', '2025-01-15', 'Flight', 115000.00),
(11, 'Rohan Das', 'H951753', 'Indian', 29, 'Tokyo', '2025-02-12', '2025-02-22', 'Flight', 135000.00),
(12, 'Emily Brown', 'I852147', 'American', 34, 'Italy', '2025-03-18', '2025-03-28', 'Flight', 125000.00),
(13, 'Naveen Joshi', 'J789456', 'Indian', 39, 'Egypt', '2025-04-25', '2025-05-05', 'Flight', 105000.00),
(14, 'Divya Patel', 'K951852', 'Indian', 31, 'Mauritius', '2025-06-01', '2025-06-10', 'Flight', 95000.00),
(15, 'Sophia Reed', 'L123987', 'British', 36, 'New York', '2025-07-15', '2025-07-25', 'Flight', 140000.00),
(16, 'Ethan Campbell', 'M963258', 'Canadian', 41, 'Switzerland', '2025-08-20', '2025-08-30', 'Flight', 150000.00),
(17, 'Rahul Mehta', 'N741963', 'Indian', 31, 'Hong Kong', '2025-09-12', '2025-09-22', 'Flight', 80000.00),
(18, 'Aditi Sharma', 'O321654', 'Indian', 26, 'Dubai', '2025-10-10', '2025-10-20', 'Flight', 85000.00),
(19, 'Daniel Fernandez', 'P789123', 'Indian', 29, 'Bali', '2025-11-05', '2025-11-15', 'Flight', 72000.00),
(20, 'Vivek Reddy', 'Q456789', 'Indian', 35, 'Bangkok', '2025-12-15', '2025-12-25', 'Flight', 65000.00);


SELECT SUM(total_seats) AS total_bus_seats FROM bmtc_details;


SELECT AVG(ticket_price) AS avg_ticket_price FROM bmtc_details;

SELECT MAX(total_expense) AS max_expense FROM tourist_info;

SELECT MIN(total_expense) AS min_expense FROM tourist_info;

SELECT travel_destination, COUNT(*) AS total_tourists FROM tourist_info GROUP BY travel_destination;


SELECT bus_type, AVG(ticket_price) AS avg_price 
FROM bmtc_details 
GROUP BY bus_type;

SELECT route_from, route_to, COUNT(*) AS total_buses 
FROM bmtc_details 
GROUP BY route_from, route_to 
HAVING COUNT(*) > 1;

SELECT nationality, SUM(total_expense) AS total_spent 
FROM tourist_info 
GROUP BY nationality;

SELECT travel_destination, SUM(total_expense) AS total_expense 
FROM tourist_info 
GROUP BY travel_destination 
HAVING SUM(total_expense) > 100000;

SELECT travel_mode, AVG(total_expense) AS avg_expense 
FROM tourist_info 
GROUP BY travel_mode;