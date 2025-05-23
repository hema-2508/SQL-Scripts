

Assignment:
Create 5 Tables with 10 columns
Using ALTER apply NOT NULL, Unique, and Check constraints for any 3 columns.
Table 1 - PK
Table 2 - PK, FK (Table 1)
Table 3 - PK, FK (Table1, Table2)
Table 4 - PK, FK (Table 1, Table 2, Table 3)
Table 5 - PK, FK (Table1, Table2, Table3, Table4)

Insert 20 data for each table.
Using ALTER rename column names for 4 columns.
Fetch the data using AND, OR, IN, BETWEEN, NOT IN, NOT BETWEEN, LIKE, GROUP BY, HAVING, Aggregate functions

CREATE TABLE home_appliances(app_id int,
app_name varchar(50),
type varchar(50),
brand varchar(50),
purchase_year int,
status boolean,
warranty_period int,
position varchar(50),
model_number int,
voltage int );

ALTER TABLE home_appliances add constraint app_id_pk primary key(app_id);

ALTER TABLE home_appliances modify app_id int not null;
ALTER TABLE home_appliances modify app_name varchar(40) not null;
ALTER TABLE home_appliances modify type varchar(50) not null;

ALTER TABLE home_appliances add constraint app_name_uni unique(app_name);
ALTER TABLE home_appliances add constraint app_id_uni unique(app_id);
ALTER TABLE home_appliances add constraint app_year_uni unique(purchase_year);

ALTER TABLE home_appliances add constraint year_check check(purchase_year>1990);
ALTER TABLE home_appliances add constraint id_check check(app_id>0);
ALTER TABLE home_appliances add constraint voltage_uni check(voltage>0);



CREATE TABLE Extention_box(box_id int,
location varchar(50),
installation_date varchar(20),
box_type varchar(30),
capacity bigint,
status boolean,
manufacturer varchar(50),
no_of_outlet int,
voltage int,
material varchar(50)
);

ALTER TABLE Extention_box add constraint box_uni unique(box_id);
ALTER TABLE Extention_box add constraint  loc_uni unique(location);
ALTER TABLE Extention_box add constraint  inst_uni unique(installation_date);
ALTER TABLE Extention_box add constraint  material_uni unique(material);


ALTER TABLE Extention_box modify box_id int not null; 
ALTER TABLE Extention_box modify installation_date varchar(30) not null; 
ALTER TABLE extention_box modify location varchar(40) not null; 

ALTER TABLE Extention_box add constraint check(capacity>2);
ALTER TABLE Extention_box add constraint check(no_of_outlet>3);
ALTER TABLE Extention_box add constraint check(voltage >12);

SELECT * FROM Extention_box;
DESC Extention_box;

ALTER TABLE Extention_box add constraint box_pk primary key(box_id);
ALTER TABLE Extention_box add constraint id_fk foreign key(box_id) 
references home_appliances(app_id);

CREATE TABLE room(room_id int,
app_id int,
r_name varchar(50),
floor_no int,
r_size varchar(50),
location varchar(40),
wall_colour varchar(50),
no_lights int,
no_sockets int,
floor_type varchar(50)
);

ALTER TABLE room MODIFY room_id int not null;
ALTER TABLE room MODIFY no_lights int not null;
ALTER TABLE room MODIFY no_sockets int not null;
ALTER TABLE room modify location varchar(40) not null;

ALTER TABLE room ADD CONSTRAINT soc_uni UNIQUE(no_sockets);
ALTER TABLE room ADD CONSTRAINT color_uni UNIQUE(wall_colour);
ALTER TABLE room ADD CONSTRAINT r_size_uni UNIQUE(r_size);

ALTER TABLE room ADD CONSTRAINT light_check CHECK(no_lights>1);
ALTER TABLE room ADD CONSTRAINT socket_check CHECK(no_sockets>1);
ALTER TABLE room ADD CONSTRAINT floor_check CHECK(floor_no<15);

ALTER TABLE room ADD CONSTRAINT r_id_pk primary key(room_id);

ALTER TABLE room ADD CONSTRAINT app_id_fk foreign key(app_id) 
references home_appliances(app_id);
ALTER TABLE room ADD CONSTRAINT loc_fk foreign key(location) 
references Extention_box(location);

CREATE TABLE maintainance(maintainance_id int,
app_id int,
material varchar(50),
location varchar(40),
floor_no int,
service_date varchar(50),
predicted_cost bigint,
actual_cost int,
contact_no bigint,
service_provider varchar(50)
);

ALTER TABLE maintainance ADD CONSTRAINT maintainance_id_pk primary key(maintainance_id);
ALTER TABLE maintainance ADD CONSTRAINT appl_id_fk foreign key(app_id) 
references home_appliances(app_id);
ALTER TABLE maintainance ADD CONSTRAINT material_fk foreign key(material) 
references Extention_box(material);
ALTER TABLE maintainance ADD CONSTRAINT locs_fk foreign key(location) 
references room(location);

ALTER TABLE maintainance MODIFY maintainance_id int not null;
ALTER TABLE maintainance MODIFY predicted_cost int not null;
ALTER TABLE maintainance MODIFY actual_cost int not null;

ALTER TABLE maintainance ADD CONSTRAINT predicted_cost_uni UNIQUE(predicted_cost);
ALTER TABLE maintainance ADD CONSTRAINT actual_uni UNIQUE(actual_cost);
ALTER TABLE maintainance ADD CONSTRAINT maintainance_id_uni UNIQUE(maintainance_id);

ALTER TABLE maintainance ADD CONSTRAINT predicted_cost_check CHECK(predicted_cost>100);
ALTER TABLE maintainance ADD CONSTRAINT actual_cost_check CHECK(actual_cost>100);
ALTER TABLE maintainance ADD CONSTRAINT maintainanc_id_check CHECK(maintainance_id<100);
ALTER TABLE maintainance DROP CONSTRAINT maintainancE_id_check;

CREATE TABLE Energy_usage(usage_id int,
app_id int,
location varchar(40),
room_id int,
maintainance_id int,
total_cost bigint,
usage_duration int,
usage_kwh int,
descriptions varchar(100),
payer varchar(50)
);

ALTER TABLE Energy_usage ADD CONSTRAINT Energy_usage_id_pk primary key(usage_id);
ALTER TABLE Energy_usage ADD CONSTRAINT appll_id_fk foreign key(app_id) 
references home_appliances(app_id);
ALTER TABLE Energy_usage ADD CONSTRAINT location_fk foreign key(location) 
references Extention_box(location);
ALTER TABLE Energy_usage ADD CONSTRAINT room_id_fk foreign key(room_id) 
references room(room_id);
ALTER TABLE Energy_usage ADD CONSTRAINT maintainance_id_fk foreign key(maintainance_id) 
references maintainance(maintainance_id);

ALTER TABLE Energy_usage MODIFY usage_id int not null;
ALTER TABLE Energy_usage MODIFY total_cost int not null;
ALTER TABLE Energy_usage MODIFY payer varchar(50) not null;

ALTER TABLE Energy_usage ADD CONSTRAINT usage_id_uni UNIQUE(usage_id);
ALTER TABLE Energy_usage ADD CONSTRAINT total_cost_uni UNIQUE(total_cost);
ALTER TABLE Energy_usage ADD CONSTRAINT descriptions_uni UNIQUE(descriptions);

ALTER TABLE Energy_usage ADD CONSTRAINT usage_id_check CHECK(usage_id<10000);
ALTER TABLE Energy_usage ADD CONSTRAINT usage_duration_check CHECK(usage_duration>10);
ALTER TABLE Energy_usage ADD CONSTRAINT maintainances_id_check CHECK(usage_kwh>10);

INSERT INTO home_appliances VALUES
(1, 'Smart Fridge', 'Refrigerator', 'Samsung', 2001, true, 3, 'Kitchen', 11001, 220),
(2, 'LED TV', 'Television', 'Sony', 2002, true, 2, 'Living Room', 22010, 240),
(3, 'Microwave Oven', 'Oven', 'LG', 2003, false, 1, 'Kitchen', 33011, 230),
(4, 'Ceiling Fan', 'Fan', 'Havells', 2004, true, 5, 'Bedroom', 44012, 180),
(5, 'Washing Machine', 'Washer', 'Whirlpool', 2005, false, 4, 'Utility', 55013, 220),
(6, 'Geyser', 'Water Heater', 'Bajaj', 2006, true, 3, 'Bathroom', 66014, 240),
(7, 'Air Conditioner', 'AC', 'Daikin', 2007, true, 2, 'Bedroom', 77015, 230),
(8, 'Induction Stove', 'Cooktop', 'Prestige', 2008, false, 1, 'Kitchen', 88016, 220),
(9, 'Vacuum Cleaner', 'Cleaner', 'Dyson', 2009, true, 3, 'Store Room', 99017, 230),
(10, 'Water Purifier', 'Purifier', 'Kent', 2010, true, 4, 'Dining Area', 10118, 220),
(11, 'Smart Speaker', 'Audio', 'Amazon', 2011, true, 1, 'Living Room', 11219, 240),
(12, 'Toaster', 'Appliance', 'Philips', 2012, false, 2, 'Kitchen', 12320, 220),
(13, 'Heater', 'Room Heater', 'Usha', 2013, true, 3, 'Bedroom', 13421, 230),
(14, 'Dishwasher', 'Kitchen Appliance', 'Bosch', 2014, true, 4, 'Kitchen', 14522, 240),
(15, 'Mixer Grinder', 'Appliance', 'Preethi', 2015, true, 1, 'Kitchen', 15623, 220),
(16, 'Chimney', 'Exhaust', 'Elica', 2016, true, 5, 'Kitchen', 16724, 230),
(17, 'Home Theatre', 'Entertainment', 'LG', 2017, false, 2, 'Living Room', 17825, 240),
(18, 'Steam Iron', 'Iron', 'Bajaj', 2018, true, 3, 'Bedroom', 18926, 230),
(19, 'Treadmill', 'Fitness', 'Powermax', 2019, false, 2, 'Fitness Room', 19027, 240),
(20, 'Hair Dryer', 'Beauty', 'Philips', 2020, true, 1, 'Bathroom', 20128, 220);

INSERT INTO Extention_box VALUES
(1, 'Kitchen', '2022-01-15', 'Surge Protector', 10, true, 'Anchor', 6, 220, 'Plastic'),
(2, 'Living Room', '2022-02-01', 'Power Strip', 8, true, 'Havells', 5, 240, 'Metal'),
(3, 'Kitchen-Sink', '2022-03-01', 'Basic Box', 6, false, 'GM', 4, 230, 'Thermoplastic'),
(4, 'Bedroom-Wardrobe', '2022-04-12', 'Modular', 9, true, 'Panasonic', 6, 220, 'ABS Plastic'),
(5, 'Utility', '2022-05-10', 'Surge Shielded', 7, false, 'Legrand', 5, 240, 'Polycarbonate'),
(6, 'Bathroom-A', '2022-06-18', 'IPX Shield', 10, true, 'Finolex', 6, 230, 'Rubber Coated'),
(7, 'Master Bedroom', '2022-07-01', 'Heavy Duty', 8, true, 'Philips', 5, 220, 'Heat Resistant'),
(8, 'Pantry Room', '2022-08-11', 'Economy', 9, false, 'Syska', 6, 240, 'Polymer'),
(9, 'Store Room', '2022-09-05', 'Split Type', 10, true, 'Wipro', 4, 230, 'Fibre Reinforced'),
(10, 'Dining Area', '2022-10-02', 'IP Rated', 11, true, 'Bajaj', 6, 220, 'Composite'),
(11, 'Living-Side', '2022-11-20', 'Basic Box', 6, false, 'Crompton', 5, 220, 'ABS Fireproof'),
(12, 'Mini Kitchen', '2022-12-25', 'Standard', 7, true, 'Orient', 6, 240, 'Silicone Blend'),
(13, 'Kid Room', '2023-01-05', 'Child-Safe', 9, true, 'Usha', 5, 230, 'Plastic Cover'),
(14, 'Dining Corner', '2023-02-14', 'Switched', 8, true, 'Philips', 4, 220, 'Rubber Shielded'),
(15, 'Main Kitchen', '2023-03-10', 'Heavy Load', 12, false, 'Havells', 6, 230, 'Polycarbonate Blend'),
(16, 'Kitchen Roof', '2023-04-01', 'Indoor Box', 6, true, 'GM', 4, 220, 'Thermoplastic Rubber'),
(17, 'Bedroom Desk', '2023-05-09', 'Built-in Strip', 10, false, 'Orient', 5, 230, 'ABS Glossy'),
(18, 'Gym Room', '2023-06-19', 'High Voltage', 14, true, 'Wipro', 6, 240, 'Industrial Fibre'),
(19, 'Bathroom-B', '2023-07-28', 'Waterproof', 8, true, 'Crompton', 5, 220, 'Waterproof Plastic'),
(20, 'Bathroom-C', '2023-08-16', 'In-wall Type', 9, true, 'Legrand', 4, 230, 'Nano-coat Polymer');

INSERT INTO room VALUES
(100, 1, 'Living Room', 1, '20x15', 'Living Room', 'Blue', 4, 5, 'Marble'),
(102, 2, 'Kitchen', 1, '10x11', 'Living Room', 'Yellow', 3, 6, 'Tiles'),
(103, 3, 'Bedroom1', 2, '15x12', 'Living Room', 'Green', 5, 7, 'Wood'),
(104, 4, 'Bedroom2', 2, '14x11', 'Kitchen', 'White', 3, 8, 'Vinyl'),
(105, 5, 'Bathroom', 1, '8x16', 'Kitchen', 'Grey', 2, 9, 'Granite'),
(106, 6, 'Dining Room', 1, '12x10', 'Kitchen', 'Orange', 4, 10, 'Tiles'),
(107, 7, 'Study Room', 2, '10x12', 'Bedroom-Wardrobe', 'Brown', 2, 11, 'Wood'),
(108, 8, 'Balcony', 3, '6x4', 'Bedroom-Wardrobe', 'Beige', 2, 12, 'Cement'),
(109, 9, 'Store Room', 1, '5x5', 'Bedroom-Wardrobe', 'Pink', 3, 13, 'Tiles'),
(110, 10, 'Pooja Room', 1, '4x4', 'Gym Room', 'Red', 2, 14, 'Marble'),
(111, 11, 'Guest Room', 1, '13x12', 'Gym Room', 'Lavender', 4, 15, 'Wood'),
(112, 12, 'Lobby', 1, '16x10', 'Gym Room', 'Cream', 2, 16, 'Granite'),
(113, 13, 'Gym Room', 2, '20x26', 'Gym Room', 'Teal', 3, 17, 'Vinyl'),
(114, 14, 'Terrace', 3, '25x28', 'Dining Corner', 'Silver', 4, 18, 'Concrete'),
(115, 15, 'Utility', 1, '6x8', 'Dining Corner', 'Sky Blue', 3, 19, 'Tiles'),
(116, 16, 'Pantry', 1, '8x6', 'Dining Corner', 'Peach', 2, 20, 'Wood'),
(117, 17, 'Corridor', 1, '30x5', 'Store Room', 'White Smoke', 2, 21, 'Cement'),
(118, 18, 'Laundry', 1, '10x8', 'Store Room', 'Light Green', 3, 22, 'Tiles'),
(119, 19, 'Basement', 0, '25x22', 'Store Room', 'Charcoal', 5, 23, 'Concrete'),
(120, 12, 'Office', 1, '15x19', 'Store Room', 'Indigo', 3, 24, 'Wood');

INSERT INTO maintainance VALUES
(31, 1, 'Plastic', 'Kitchen', 1, '2023-01-01', 500, 450, 9876543210, 'Urban Services'),
(32, 2, 'Metal', 'Living Room', 2, '2023-01-05', 600, 550, 8765432109, 'City Fix'),
(33, 3, 'Thermoplastic', 'Living Room', 1, '2023-01-10', 700, 650, 7654321098, 'QuickHome'),
(34, 4, 'ABS Plastic', 'Living Room', 3, '2023-01-15', 800, 750, 6543210987, 'HomeCare'),
(35, 5, 'Polycarbonate', 'Living Room', 4, '2023-01-20', 900, 850, 5432109876, 'FixMyHome'),
(36, 6, 'Rubber Coated', 'Living Room', 1, '2023-01-25', 1000, 950, 4321098765, 'FastFix'),
(37, 7, 'Heat Resistant', 'Living Room', 2, '2023-01-30', 1100, 1050, 3210987654, 'Reliable Services'),
(38, 8, 'Polymer', 'Living Room', 1, '2023-02-01', 1200, 1150, 2109876543, 'RapidFix'),
(39, 9, 'Fibre Reinforced', 'Living Room', 1, '2023-02-05', 1300, 1250, 1098765432, 'TrustyFix'),
(40, 10, 'Composite', 'Living Room', 1, '2023-02-10', 1400, 1350, 9988776655, 'ServiceBuddy'),
(41, 11, 'ABS Fireproof', 'Living Room', 1, '2023-02-15', 1500, 1450, 9876601234, 'ProFix'),
(42, 12, 'Silicone Blend', 'Living Room', 1, '2023-02-20', 1600, 1550, 9765401234, 'CareFix'),
(43, 13, 'Plastic Cover', 'Living Room', 1, '2023-02-25', 1700, 1650, 9654301234, 'KidSafe Services'),
(44, 14, 'Rubber Shielded', 'Living Room', 1, '2023-03-01', 1800, 1750, 9543201234, 'DineFix'),
(45, 15, 'Polycarbonate Blend', 'Living Room', 1, '2023-03-05', 1900, 1850, 9432101234, 'KitchenFix'),
(46, 16, 'Plastic', 'Living Room', 2, '2023-03-10', 2000, 1950, 9321001234, 'CeilingFix'),
(47, 17, 'Metal', 'Living Room', 2, '2023-03-15', 2100, 2050, 9210001234, 'AudioCare'),
(48, 18, 'ABS Plastic', 'Living Room', 2, '2023-03-20', 2200, 2150, 9100001234, 'WarmFix'),
(49, 19, 'Fibre Reinforced', 'Living Room', 1, '2023-03-25', 2300, 2250, 9000001234, 'FitCare'),
(50, 20, 'Rubber Coated', 'Living Room', 1, '2023-03-30', 2400, 2350, 8900001234, 'HairFix');

ALTER TABLE home_appliances DROP CONSTRAINT app_year_uni;
ALTER TABLE Energy_usage DROP CONSTRAINT total_cost_uni;

INSERT INTO Energy_usage VALUES
(101, 1, 'Kitchen', 100, 31, 1200, 60, 150, 'High power fridge', 'Alice'),
(102, 2, 'Living Room',102, 32, 900, 45, 110, 'TV used for gaming', 'Bob'),
(103, 3, 'Kitchen',103, 33, 700, 40, 105, 'Microwave usage high', 'Carol'),
(104, 4, 'Kitchen',104,34, 500, 50, 115, 'Fan used all night', 'Dave'),
(105, 5, 'Utility',105, 35, 950, 70, 140, 'Washer run twice daily', 'Eve'),
(106, 6, 'Kitchen',106, 36, 800, 30, 100, 'Geyser used daily', 'Frank'),
(107, 7, 'Living Room',107, 37, 1500, 90, 160, 'AC usage peak summer', 'Grace'),
(108, 8, 'Kitchen',108, 38, 600, 50, 120, 'Cooktop heavy use', 'Hannah'),
(109, 9, 'Living Room',109, 39, 400, 35, 95, 'Vacuum cleaned weekly', 'Ivan'),
(110, 10, 'Living Room', 110, 40, 550, 25, 85, 'Water purifier moderate', 'Judy'),
(111, 11, 'Living Room', 111, 41, 300, 20, 65, 'Speaker passive use', 'Kevin'),
(112, 12, 'Kitchen', 112, 42, 250, 15, 55, 'Toaster used rarely', 'Laura'),
(113, 13, 'Bedroom-Wardrobe', 113, 43, 480, 32, 105, 'Heater winter use', 'Mike'),
(114, 14, 'Kitchen', 114, 44, 890, 60, 135, 'Dishwasher every day', 'Nina'),
(115, 15, 'Kitchen', 115, 45, 300, 20, 60, 'Mixer occasional', 'Owen'),
(116, 16, 'Kitchen', 116, 46, 670, 40, 110, 'Chimney daily use', 'Pam'),
(117, 17, 'Living Room',117, 47, 1100, 70, 145, 'Home theatre night use', 'Quinn'),
(118, 18, 'Living Room', 118, 48, 290, 18, 50, 'Iron once daily', 'Raj'),
(119, 19, 'Living Room', 119, 49, 1300, 75, 155, 'Treadmill heavy use', 'Sara'),
(120, 20, 'Living Room', 120, 50, 220, 12, 45, 'Hair dryer low use', 'Tom');

ALTER TABLE Energy_usage RENAME column payer TO buyer;
ALTER TABLE maintainance RENAME COLUMN service_provider TO provider;
ALTER TABLE room RENAME COLUMN floor_type TO f_type;
ALTER TABLE home_appliances RENAME COLUMN brand TO h_brand;



Assignment:
Create 5 Tables with 10 columns
Using ALTER apply NOT NULL, Unique, and Check constraints for any 3 columns.
Table 1 - PK
Table 2 - PK, FK (Table 1)
Table 3 - PK, FK (Table1, Table2)
Table 4 - PK, FK (Table 1, Table 2, Table 3)
Table 5 - PK, FK (Table1, Table2, Table3, Table4)

Insert 20 data for each table.
Using ALTER rename column names for 4 columns.
Fetch the data using AND, OR, IN, BETWEEN, NOT IN, NOT BETWEEN, LIKE, GROUP BY, HAVING, Aggregate functions

CREATE TABLE home_appliances(app_id int,
app_name varchar(50),
type varchar(50),
brand varchar(50),
purchase_year int,
status boolean,
warranty_period int,
position varchar(50),
model_number int,
voltage int );

ALTER TABLE home_appliances add constraint app_id_pk primary key(app_id);

ALTER TABLE home_appliances modify app_id int not null;
ALTER TABLE home_appliances modify app_name varchar(40) not null;
ALTER TABLE home_appliances modify type varchar(50) not null;

ALTER TABLE home_appliances add constraint app_name_uni unique(app_name);
ALTER TABLE home_appliances add constraint app_id_uni unique(app_id);
ALTER TABLE home_appliances add constraint app_year_uni unique(purchase_year);

ALTER TABLE home_appliances add constraint year_check check(purchase_year>1990);
ALTER TABLE home_appliances add constraint id_check check(app_id>0);
ALTER TABLE home_appliances add constraint voltage_uni check(voltage>0);



CREATE TABLE Extention_box(box_id int,
location varchar(50),
installation_date varchar(20),
box_type varchar(30),
capacity bigint,
status boolean,
manufacturer varchar(50),
no_of_outlet int,
voltage int,
material varchar(50)
);

ALTER TABLE Extention_box add constraint box_uni unique(box_id);
ALTER TABLE Extention_box add constraint  loc_uni unique(location);
ALTER TABLE Extention_box add constraint  inst_uni unique(installation_date);
ALTER TABLE Extention_box add constraint  material_uni unique(material);


ALTER TABLE Extention_box modify box_id int not null; 
ALTER TABLE Extention_box modify installation_date varchar(30) not null; 
ALTER TABLE extention_box modify location varchar(40) not null; 

ALTER TABLE Extention_box add constraint check(capacity>2);
ALTER TABLE Extention_box add constraint check(no_of_outlet>3);
ALTER TABLE Extention_box add constraint check(voltage >12);

SELECT * FROM Extention_box;
DESC Extention_box;

ALTER TABLE Extention_box add constraint box_pk primary key(box_id);
ALTER TABLE Extention_box add constraint id_fk foreign key(box_id) 
references home_appliances(app_id);

CREATE TABLE room(room_id int,
app_id int,
r_name varchar(50),
floor_no int,
r_size varchar(50),
location varchar(40),
wall_colour varchar(50),
no_lights int,
no_sockets int,
floor_type varchar(50)
);

ALTER TABLE room MODIFY room_id int not null;
ALTER TABLE room MODIFY no_lights int not null;
ALTER TABLE room MODIFY no_sockets int not null;
ALTER TABLE room modify location varchar(40) not null;

ALTER TABLE room ADD CONSTRAINT soc_uni UNIQUE(no_sockets);
ALTER TABLE room ADD CONSTRAINT color_uni UNIQUE(wall_colour);
ALTER TABLE room ADD CONSTRAINT r_size_uni UNIQUE(r_size);

ALTER TABLE room ADD CONSTRAINT light_check CHECK(no_lights>1);
ALTER TABLE room ADD CONSTRAINT socket_check CHECK(no_sockets>1);
ALTER TABLE room ADD CONSTRAINT floor_check CHECK(floor_no<15);

ALTER TABLE room ADD CONSTRAINT r_id_pk primary key(room_id);

ALTER TABLE room ADD CONSTRAINT app_id_fk foreign key(app_id) 
references home_appliances(app_id);
ALTER TABLE room ADD CONSTRAINT loc_fk foreign key(location) 
references Extention_box(location);

CREATE TABLE maintainance(maintainance_id int,
app_id int,
material varchar(50),
location varchar(40),
floor_no int,
service_date varchar(50),
predicted_cost bigint,
actual_cost int,
contact_no bigint,
service_provider varchar(50)
);

ALTER TABLE maintainance ADD CONSTRAINT maintainance_id_pk primary key(maintainance_id);
ALTER TABLE maintainance ADD CONSTRAINT appl_id_fk foreign key(app_id) 
references home_appliances(app_id);
ALTER TABLE maintainance ADD CONSTRAINT material_fk foreign key(material) 
references Extention_box(material);
ALTER TABLE maintainance ADD CONSTRAINT locs_fk foreign key(location) 
references room(location);

ALTER TABLE maintainance MODIFY maintainance_id int not null;
ALTER TABLE maintainance MODIFY predicted_cost int not null;
ALTER TABLE maintainance MODIFY actual_cost int not null;

ALTER TABLE maintainance ADD CONSTRAINT predicted_cost_uni UNIQUE(predicted_cost);
ALTER TABLE maintainance ADD CONSTRAINT actual_uni UNIQUE(actual_cost);
ALTER TABLE maintainance ADD CONSTRAINT maintainance_id_uni UNIQUE(maintainance_id);

ALTER TABLE maintainance ADD CONSTRAINT predicted_cost_check CHECK(predicted_cost>100);
ALTER TABLE maintainance ADD CONSTRAINT actual_cost_check CHECK(actual_cost>100);
ALTER TABLE maintainance ADD CONSTRAINT maintainanc_id_check CHECK(maintainance_id<100);
ALTER TABLE maintainance DROP CONSTRAINT maintainancE_id_check;

CREATE TABLE Energy_usage(usage_id int,
app_id int,
location varchar(40),
room_id int,
maintainance_id int,
total_cost bigint,
usage_duration int,
usage_kwh int,
descriptions varchar(100),
payer varchar(50)
);

ALTER TABLE Energy_usage ADD CONSTRAINT Energy_usage_id_pk primary key(usage_id);
ALTER TABLE Energy_usage ADD CONSTRAINT appll_id_fk foreign key(app_id) 
references home_appliances(app_id);
ALTER TABLE Energy_usage ADD CONSTRAINT location_fk foreign key(location) 
references Extention_box(location);
ALTER TABLE Energy_usage ADD CONSTRAINT room_id_fk foreign key(room_id) 
references room(room_id);
ALTER TABLE Energy_usage ADD CONSTRAINT maintainance_id_fk foreign key(maintainance_id) 
references maintainance(maintainance_id);

ALTER TABLE Energy_usage MODIFY usage_id int not null;
ALTER TABLE Energy_usage MODIFY total_cost int not null;
ALTER TABLE Energy_usage MODIFY payer varchar(50) not null;

ALTER TABLE Energy_usage ADD CONSTRAINT usage_id_uni UNIQUE(usage_id);
ALTER TABLE Energy_usage ADD CONSTRAINT total_cost_uni UNIQUE(total_cost);
ALTER TABLE Energy_usage ADD CONSTRAINT descriptions_uni UNIQUE(descriptions);

ALTER TABLE Energy_usage ADD CONSTRAINT usage_id_check CHECK(usage_id<10000);
ALTER TABLE Energy_usage ADD CONSTRAINT usage_duration_check CHECK(usage_duration>10);
ALTER TABLE Energy_usage ADD CONSTRAINT maintainances_id_check CHECK(usage_kwh>10);

INSERT INTO home_appliances VALUES
(1, 'Smart Fridge', 'Refrigerator', 'Samsung', 2001, true, 3, 'Kitchen', 11001, 220),
(2, 'LED TV', 'Television', 'Sony', 2002, true, 2, 'Living Room', 22010, 240),
(3, 'Microwave Oven', 'Oven', 'LG', 2003, false, 1, 'Kitchen', 33011, 230),
(4, 'Ceiling Fan', 'Fan', 'Havells', 2004, true, 5, 'Bedroom', 44012, 180),
(5, 'Washing Machine', 'Washer', 'Whirlpool', 2005, false, 4, 'Utility', 55013, 220),
(6, 'Geyser', 'Water Heater', 'Bajaj', 2006, true, 3, 'Bathroom', 66014, 240),
(7, 'Air Conditioner', 'AC', 'Daikin', 2007, true, 2, 'Bedroom', 77015, 230),
(8, 'Induction Stove', 'Cooktop', 'Prestige', 2008, false, 1, 'Kitchen', 88016, 220),
(9, 'Vacuum Cleaner', 'Cleaner', 'Dyson', 2009, true, 3, 'Store Room', 99017, 230),
(10, 'Water Purifier', 'Purifier', 'Kent', 2010, true, 4, 'Dining Area', 10118, 220),
(11, 'Smart Speaker', 'Audio', 'Amazon', 2011, true, 1, 'Living Room', 11219, 240),
(12, 'Toaster', 'Appliance', 'Philips', 2012, false, 2, 'Kitchen', 12320, 220),
(13, 'Heater', 'Room Heater', 'Usha', 2013, true, 3, 'Bedroom', 13421, 230),
(14, 'Dishwasher', 'Kitchen Appliance', 'Bosch', 2014, true, 4, 'Kitchen', 14522, 240),
(15, 'Mixer Grinder', 'Appliance', 'Preethi', 2015, true, 1, 'Kitchen', 15623, 220),
(16, 'Chimney', 'Exhaust', 'Elica', 2016, true, 5, 'Kitchen', 16724, 230),
(17, 'Home Theatre', 'Entertainment', 'LG', 2017, false, 2, 'Living Room', 17825, 240),
(18, 'Steam Iron', 'Iron', 'Bajaj', 2018, true, 3, 'Bedroom', 18926, 230),
(19, 'Treadmill', 'Fitness', 'Powermax', 2019, false, 2, 'Fitness Room', 19027, 240),
(20, 'Hair Dryer', 'Beauty', 'Philips', 2020, true, 1, 'Bathroom', 20128, 220);

INSERT INTO Extention_box VALUES
(1, 'Kitchen', '2022-01-15', 'Surge Protector', 10, true, 'Anchor', 6, 220, 'Plastic'),
(2, 'Living Room', '2022-02-01', 'Power Strip', 8, true, 'Havells', 5, 240, 'Metal'),
(3, 'Kitchen-Sink', '2022-03-01', 'Basic Box', 6, false, 'GM', 4, 230, 'Thermoplastic'),
(4, 'Bedroom-Wardrobe', '2022-04-12', 'Modular', 9, true, 'Panasonic', 6, 220, 'ABS Plastic'),
(5, 'Utility', '2022-05-10', 'Surge Shielded', 7, false, 'Legrand', 5, 240, 'Polycarbonate'),
(6, 'Bathroom-A', '2022-06-18', 'IPX Shield', 10, true, 'Finolex', 6, 230, 'Rubber Coated'),
(7, 'Master Bedroom', '2022-07-01', 'Heavy Duty', 8, true, 'Philips', 5, 220, 'Heat Resistant'),
(8, 'Pantry Room', '2022-08-11', 'Economy', 9, false, 'Syska', 6, 240, 'Polymer'),
(9, 'Store Room', '2022-09-05', 'Split Type', 10, true, 'Wipro', 4, 230, 'Fibre Reinforced'),
(10, 'Dining Area', '2022-10-02', 'IP Rated', 11, true, 'Bajaj', 6, 220, 'Composite'),
(11, 'Living-Side', '2022-11-20', 'Basic Box', 6, false, 'Crompton', 5, 220, 'ABS Fireproof'),
(12, 'Mini Kitchen', '2022-12-25', 'Standard', 7, true, 'Orient', 6, 240, 'Silicone Blend'),
(13, 'Kid Room', '2023-01-05', 'Child-Safe', 9, true, 'Usha', 5, 230, 'Plastic Cover'),
(14, 'Dining Corner', '2023-02-14', 'Switched', 8, true, 'Philips', 4, 220, 'Rubber Shielded'),
(15, 'Main Kitchen', '2023-03-10', 'Heavy Load', 12, false, 'Havells', 6, 230, 'Polycarbonate Blend'),
(16, 'Kitchen Roof', '2023-04-01', 'Indoor Box', 6, true, 'GM', 4, 220, 'Thermoplastic Rubber'),
(17, 'Bedroom Desk', '2023-05-09', 'Built-in Strip', 10, false, 'Orient', 5, 230, 'ABS Glossy'),
(18, 'Gym Room', '2023-06-19', 'High Voltage', 14, true, 'Wipro', 6, 240, 'Industrial Fibre'),
(19, 'Bathroom-B', '2023-07-28', 'Waterproof', 8, true, 'Crompton', 5, 220, 'Waterproof Plastic'),
(20, 'Bathroom-C', '2023-08-16', 'In-wall Type', 9, true, 'Legrand', 4, 230, 'Nano-coat Polymer');

INSERT INTO room VALUES
(100, 1, 'Living Room', 1, '20x15', 'Living Room', 'Blue', 4, 5, 'Marble'),
(102, 2, 'Kitchen', 1, '10x11', 'Living Room', 'Yellow', 3, 6, 'Tiles'),
(103, 3, 'Bedroom1', 2, '15x12', 'Living Room', 'Green', 5, 7, 'Wood'),
(104, 4, 'Bedroom2', 2, '14x11', 'Kitchen', 'White', 3, 8, 'Vinyl'),
(105, 5, 'Bathroom', 1, '8x16', 'Kitchen', 'Grey', 2, 9, 'Granite'),
(106, 6, 'Dining Room', 1, '12x10', 'Kitchen', 'Orange', 4, 10, 'Tiles'),
(107, 7, 'Study Room', 2, '10x12', 'Bedroom-Wardrobe', 'Brown', 2, 11, 'Wood'),
(108, 8, 'Balcony', 3, '6x4', 'Bedroom-Wardrobe', 'Beige', 2, 12, 'Cement'),
(109, 9, 'Store Room', 1, '5x5', 'Bedroom-Wardrobe', 'Pink', 3, 13, 'Tiles'),
(110, 10, 'Pooja Room', 1, '4x4', 'Gym Room', 'Red', 2, 14, 'Marble'),
(111, 11, 'Guest Room', 1, '13x12', 'Gym Room', 'Lavender', 4, 15, 'Wood'),
(112, 12, 'Lobby', 1, '16x10', 'Gym Room', 'Cream', 2, 16, 'Granite'),
(113, 13, 'Gym Room', 2, '20x26', 'Gym Room', 'Teal', 3, 17, 'Vinyl'),
(114, 14, 'Terrace', 3, '25x28', 'Dining Corner', 'Silver', 4, 18, 'Concrete'),
(115, 15, 'Utility', 1, '6x8', 'Dining Corner', 'Sky Blue', 3, 19, 'Tiles'),
(116, 16, 'Pantry', 1, '8x6', 'Dining Corner', 'Peach', 2, 20, 'Wood'),
(117, 17, 'Corridor', 1, '30x5', 'Store Room', 'White Smoke', 2, 21, 'Cement'),
(118, 18, 'Laundry', 1, '10x8', 'Store Room', 'Light Green', 3, 22, 'Tiles'),
(119, 19, 'Basement', 0, '25x22', 'Store Room', 'Charcoal', 5, 23, 'Concrete'),
(120, 12, 'Office', 1, '15x19', 'Store Room', 'Indigo', 3, 24, 'Wood');

INSERT INTO maintainance VALUES
(31, 1, 'Plastic', 'Kitchen', 1, '2023-01-01', 500, 450, 9876543210, 'Urban Services'),
(32, 2, 'Metal', 'Living Room', 2, '2023-01-05', 600, 550, 8765432109, 'City Fix'),
(33, 3, 'Thermoplastic', 'Living Room', 1, '2023-01-10', 700, 650, 7654321098, 'QuickHome'),
(34, 4, 'ABS Plastic', 'Living Room', 3, '2023-01-15', 800, 750, 6543210987, 'HomeCare'),
(35, 5, 'Polycarbonate', 'Living Room', 4, '2023-01-20', 900, 850, 5432109876, 'FixMyHome'),
(36, 6, 'Rubber Coated', 'Living Room', 1, '2023-01-25', 1000, 950, 4321098765, 'FastFix'),
(37, 7, 'Heat Resistant', 'Living Room', 2, '2023-01-30', 1100, 1050, 3210987654, 'Reliable Services'),
(38, 8, 'Polymer', 'Living Room', 1, '2023-02-01', 1200, 1150, 2109876543, 'RapidFix'),
(39, 9, 'Fibre Reinforced', 'Living Room', 1, '2023-02-05', 1300, 1250, 1098765432, 'TrustyFix'),
(40, 10, 'Composite', 'Living Room', 1, '2023-02-10', 1400, 1350, 9988776655, 'ServiceBuddy'),
(41, 11, 'ABS Fireproof', 'Living Room', 1, '2023-02-15', 1500, 1450, 9876601234, 'ProFix'),
(42, 12, 'Silicone Blend', 'Living Room', 1, '2023-02-20', 1600, 1550, 9765401234, 'CareFix'),
(43, 13, 'Plastic Cover', 'Living Room', 1, '2023-02-25', 1700, 1650, 9654301234, 'KidSafe Services'),
(44, 14, 'Rubber Shielded', 'Living Room', 1, '2023-03-01', 1800, 1750, 9543201234, 'DineFix'),
(45, 15, 'Polycarbonate Blend', 'Living Room', 1, '2023-03-05', 1900, 1850, 9432101234, 'KitchenFix'),
(46, 16, 'Plastic', 'Living Room', 2, '2023-03-10', 2000, 1950, 9321001234, 'CeilingFix'),
(47, 17, 'Metal', 'Living Room', 2, '2023-03-15', 2100, 2050, 9210001234, 'AudioCare'),
(48, 18, 'ABS Plastic', 'Living Room', 2, '2023-03-20', 2200, 2150, 9100001234, 'WarmFix'),
(49, 19, 'Fibre Reinforced', 'Living Room', 1, '2023-03-25', 2300, 2250, 9000001234, 'FitCare'),
(50, 20, 'Rubber Coated', 'Living Room', 1, '2023-03-30', 2400, 2350, 8900001234, 'HairFix');

ALTER TABLE home_appliances DROP CONSTRAINT app_year_uni;
ALTER TABLE Energy_usage DROP CONSTRAINT total_cost_uni;

INSERT INTO Energy_usage VALUES
(101, 1, 'Kitchen', 100, 31, 1200, 60, 150, 'High power fridge', 'Alice'),
(102, 2, 'Living Room',102, 32, 900, 45, 110, 'TV used for gaming', 'Bob'),
(103, 3, 'Kitchen',103, 33, 700, 40, 105, 'Microwave usage high', 'Carol'),
(104, 4, 'Kitchen',104,34, 500, 50, 115, 'Fan used all night', 'Dave'),
(105, 5, 'Utility',105, 35, 950, 70, 140, 'Washer run twice daily', 'Eve'),
(106, 6, 'Kitchen',106, 36, 800, 30, 100, 'Geyser used daily', 'Frank'),
(107, 7, 'Living Room',107, 37, 1500, 90, 160, 'AC usage peak summer', 'Grace'),
(108, 8, 'Kitchen',108, 38, 600, 50, 120, 'Cooktop heavy use', 'Hannah'),
(109, 9, 'Living Room',109, 39, 400, 35, 95, 'Vacuum cleaned weekly', 'Ivan'),
(110, 10, 'Living Room', 110, 40, 550, 25, 85, 'Water purifier moderate', 'Judy'),
(111, 11, 'Living Room', 111, 41, 300, 20, 65, 'Speaker passive use', 'Kevin'),
(112, 12, 'Kitchen', 112, 42, 250, 15, 55, 'Toaster used rarely', 'Laura'),
(113, 13, 'Bedroom-Wardrobe', 113, 43, 480, 32, 105, 'Heater winter use', 'Mike'),
(114, 14, 'Kitchen', 114, 44, 890, 60, 135, 'Dishwasher every day', 'Nina'),
(115, 15, 'Kitchen', 115, 45, 300, 20, 60, 'Mixer occasional', 'Owen'),
(116, 16, 'Kitchen', 116, 46, 670, 40, 110, 'Chimney daily use', 'Pam'),
(117, 17, 'Living Room',117, 47, 1100, 70, 145, 'Home theatre night use', 'Quinn'),
(118, 18, 'Living Room', 118, 48, 290, 18, 50, 'Iron once daily', 'Raj'),
(119, 19, 'Living Room', 119, 49, 1300, 75, 155, 'Treadmill heavy use', 'Sara'),
(120, 20, 'Living Room', 120, 50, 220, 12, 45, 'Hair dryer low use', 'Tom');

ALTER TABLE Energy_usage RENAME column payer TO buyer;
ALTER TABLE maintainance RENAME COLUMN service_provider TO provider;
ALTER TABLE room RENAME COLUMN floor_type TO f_type;
ALTER TABLE home_appliances RENAME COLUMN brand TO h_brand;

SELECT * FROM home_appliances 
WHERE h_brand = 'LG' AND status = false 
   OR type = 'AC';

SELECT * FROM home_appliances 
WHERE h_brand IN ('LG', 'Samsung', 'Whirlpool');

SELECT * FROM home_appliances 
WHERE type NOT IN ('Fan', 'AC');

SELECT * FROM home_appliances 
WHERE purchase_year BETWEEN 2005 AND 2015;

SELECT * FROM home_appliances 
WHERE voltage NOT BETWEEN 200 AND 230;

SELECT * FROM home_appliances 
WHERE app_name LIKE 'Smart%';

SELECT * FROM Extention_box 
WHERE voltage > 220 OR material = 'Plastic';

SELECT * FROM Extention_box 
WHERE manufacturer IN ('Philips', 'Bajaj');

SELECT * FROM Extention_box 
WHERE material NOT IN ('Plastic', 'Metal');

SELECT * FROM Extention_box 
WHERE capacity BETWEEN 6 AND 10;

SELECT * FROM Extention_box 
WHERE voltage NOT BETWEEN 220 AND 230;

SELECT * FROM Extention_box 
WHERE location LIKE '%Kitchen%';

SELECT * FROM room 
WHERE no_lights > 2 AND floor_no < 5 
   OR wall_colour = 'White';

SELECT * FROM room 
WHERE r_name IN ('Living Room', 'Bedroom');

SELECT * FROM room 
WHERE wall_colour NOT IN ('Blue', 'Green');

SELECT * FROM room 
WHERE floor_no BETWEEN 1 AND 10;

SELECT * FROM room 
WHERE no_sockets NOT BETWEEN 3 AND 6;

SELECT * FROM room 
WHERE r_size LIKE '2%';

SELECT floor_no, COUNT(*) AS rooms_per_floor
FROM room
GROUP BY floor_no
HAVING COUNT(*) >= 2;

SELECT * FROM maintainance 
WHERE material IN ('Plastic', 'Metal');

SELECT * FROM maintainance 
WHERE location NOT IN ('Kitchen', 'Bathroom');

SELECT * FROM maintainance 
WHERE predicted_cost BETWEEN 200 AND 1000;

SELECT * FROM maintainance 
WHERE actual_cost NOT BETWEEN 300 AND 800;

SELECT * FROM maintainance 
WHERE provider LIKE 'Urban%';

SELECT provider, AVG(actual_cost) AS avg_actual_cost
FROM maintainance
GROUP BY provider
HAVING AVG(actual_cost) > 500;

SELECT * FROM Energy_usage 
WHERE usage_kwh > 100 AND total_cost < 1000 
   OR buyer = 'Tenant';

SELECT * FROM Energy_usage 
WHERE location IN ('Living Room', 'Kitchen');

SELECT * FROM Energy_usage 
WHERE buyer NOT IN ('Owner', 'Tenant');

SELECT * FROM Energy_usage 
WHERE usage_duration BETWEEN 30 AND 90;

SELECT * FROM Energy_usage 
WHERE usage_kwh NOT BETWEEN 50 AND 200;


SELECT * FROM Energy_usage 
WHERE descriptions LIKE 'm%';

SELECT buyer, SUM(total_cost) AS total_expenditure
FROM Energy_usage
GROUP BY buyer
HAVING SUM(total_cost) > 500;
