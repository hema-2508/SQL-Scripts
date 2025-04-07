bank_info(bank_id, bank_name, bank_loc, ifsc_code, no_of_cust)
cust_info(cust_id, cust_name, acc_no, bank_id,balance)
loan_info(loan_id, loan_name, bank_id, cust_id, loan_amount)
insurance_info(insr_id, insr_type, policy_no, bank_id,cust_id,loan_id)

CREATE TABLE bank_info (
    bank_id INT,
    bank_name VARCHAR(100),
    bank_loc VARCHAR(100),
    ifsc_code VARCHAR(20),
    no_of_cust INT
);

CREATE TABLE cust_info (
    cust_id INT,
    cust_name VARCHAR(100),
    acc_no VARCHAR(50),
    bank_id INT,
    balance DECIMAL(15, 2)
);

CREATE TABLE loan_info (
    loan_id INT,
    loan_name VARCHAR(100),
    bank_id INT,
    cust_id INT,
    loan_amount DECIMAL(15, 2)
);

CREATE TABLE insurance_info (
    insr_id INT,
    insr_type VARCHAR(100),
    policy_no VARCHAR(50),
    bank_id INT,
    cust_id INT,
    loan_id INT
);

SELECT * FROM bank_info;
SELECT * FROM loan_info;
SELECT * FROM cust_info;
SELECT * FROM insurance_info;




truncate TABLE loan_info;


INSERT INTO bank_info VALUES (501, 'HDFC Bank', 'Chennai', 'HDFC0001', 1200);
INSERT INTO bank_info VALUES (502, 'SBI', 'Mumbai', 'SBI0002', 2000);
INSERT INTO bank_info VALUES (503, 'ICICI', 'Delhi', 'ICICI0003', 1500);
INSERT INTO bank_info VALUES (504, 'Axis Bank', 'Bangalore', 'AXIS0004', 1000);
INSERT INTO bank_info VALUES (505, 'Yes Bank', 'Hyderabad', 'YES0005', 800);
INSERT INTO bank_info VALUES (506, 'Canara Bank', 'Pune', 'CAN0006', 900);
INSERT INTO bank_info VALUES (507, 'Kotak Bank', 'Ahmedabad', 'KOTAK0007', 600);
INSERT INTO bank_info VALUES (508, 'Indian Bank', 'Kolkata', 'INDB0008', 750);
INSERT INTO bank_info VALUES (1, 'HDFC Bank', 'Chennai', 'HDFC0001', 1200);
INSERT INTO bank_info VALUES (2, 'SBI', 'Mumbai', 'SBI0002', 2000);
INSERT INTO bank_info VALUES (3, 'ICICI', 'Delhi', 'ICICI0003', 1500);
INSERT INTO bank_info VALUES (4, 'Axis Bank', 'Bangalore', 'AXIS0004', 1000);
INSERT INTO bank_info VALUES (5, 'Yes Bank', 'Hyderabad', 'YES0005', 800);
INSERT INTO bank_info VALUES (6, 'Canara Bank', 'Pune', 'CAN0006', 900);
INSERT INTO bank_info VALUES (7, 'Kotak Bank', 'Ahmedabad', 'KOTAK0007', 600);

INSERT INTO cust_info VALUES (101, 'Teddy', 'ACC101', 501, 50000.00);
INSERT INTO cust_info VALUES (102, 'Jerry', 'ACC102', 502, 75000.00);
INSERT INTO cust_info VALUES (103, 'Bujji', 'ACC103', 503, 65000.00);
INSERT INTO cust_info VALUES (104, 'Dsouza', 'ACC104', 504, 48000.00);
INSERT INTO cust_info VALUES (105, 'Tom', 'ACC105', 505, 90000.00);
INSERT INTO cust_info VALUES (106, 'Jackie', 'ACC106', 506, 30000.00);
INSERT INTO cust_info VALUES (107, 'Dora', 'ACC107', 507, 42000.00);
INSERT INTO cust_info VALUES (108, 'Meera', 'ACC108', 508, 51000.00);
INSERT INTO cust_info VALUES (110, 'Amit', 'ACC101', 509, 50000.00);
INSERT INTO cust_info VALUES (112, 'Bhavna', 'ACC102', 510, 75000.00);
INSERT INTO cust_info VALUES (113, 'Chirag', 'ACC103', 511, 65000.00);
INSERT INTO cust_info VALUES (114, 'Deepa', 'ACC104', 512, 48000.00);
INSERT INTO cust_info VALUES (115, 'Eshan', 'ACC105', 513, 90000.00);
INSERT INTO cust_info VALUES (116, 'Farah', 'ACC106', 514, 30000.00);
INSERT INTO cust_info VALUES (117, 'Gopal', 'ACC107', 515, 42000.00);

INSERT INTO loan_info VALUES (201, 'Home Loan', 501, 101, 200000.00);
INSERT INTO loan_info VALUES (202, 'Car Loan', 502, 102, 500000.00);
INSERT INTO loan_info VALUES (203, 'Personal Loan', 503, 103, 300000.00);
INSERT INTO loan_info VALUES (204, 'Education Loan', 504, 104, 400000.00);
INSERT INTO loan_info VALUES (205, 'Business Loan', 505, 105, 700000.00);
INSERT INTO loan_info VALUES (206, 'Gold Loan', 786, 506, 150000.00);
INSERT INTO loan_info VALUES (207, 'Two-wheeler Loan', 357, 507, 100000.00);
INSERT INTO loan_info VALUES (208, 'Travel Loan', 748, 508, 250000.00);
INSERT INTO loan_info VALUES (201, 'Home Loan', 1, 509, 200000.00);
INSERT INTO loan_info VALUES (202, 'Car Loan', 2, 132, 500000.00);
INSERT INTO loan_info VALUES (203, 'Personal Loan', 3, 308, 300000.00);
INSERT INTO loan_info VALUES (204, 'Education Loan', 4, 309, 400000.00);
INSERT INTO loan_info VALUES (205, 'Business Loan', 5, 311, 700000.00);
INSERT INTO loan_info VALUES (206, 'Gold Loan', 6, 312, 150000.00);
INSERT INTO loan_info VALUES (207, 'Two-wheeler Loan', 7, 313, 100000.00);

INSERT INTO insurance_info VALUES (301, 'Life Insurance', 'POL101', 501, 101, 201);
INSERT INTO insurance_info VALUES (302, 'Health Insurance', 'POL102', 502, 102, 202);
INSERT INTO insurance_info VALUES (303, 'Travel Insurance', 'POL103', 503, 103, 203);
INSERT INTO insurance_info VALUES (304, 'Motor Insurance', 'POL104', 504, 104, 204);
INSERT INTO insurance_info VALUES (305, 'Home Insurance', 'POL105', 505, 105, 205);
INSERT INTO insurance_info VALUES (306, 'Term Insurance', 'POL106', 506, 106, 206);
INSERT INTO insurance_info VALUES (307, 'Education Insurance', 'POL107', 507, 707, 207);
INSERT INTO insurance_info VALUES (308, 'Accident Insurance', 'POL108', 508, 708, 208);
INSERT INTO insurance_info VALUES (301, 'Life Insurance', 'POL101', 1, 709, 201);
INSERT INTO insurance_info VALUES (302, 'Health Insurance', 'POL102', 2, 736, 202);
INSERT INTO insurance_info VALUES (303, 'Travel Insurance', 'POL103', 3, 937, 203);
INSERT INTO insurance_info VALUES (304, 'Motor Insurance', 'POL104', 4, 974, 204);
INSERT INTO insurance_info VALUES (305, 'Home Insurance', 'POL105', 5, 763, 205);
INSERT INTO insurance_info VALUES (306, 'Term Insurance', 'POL106', 6, 973, 206);
INSERT INTO insurance_info VALUES (307, 'Education Insurance', 'POL107', 7, 752, 207);

SELECT * FROM bank_info b inner join loan_info l on b.bank_id=l.bank_id 
inner join cust_info c on b.bank_id=c.bank_id inner join insurance_info i on i.bank_id=b.bank_id;

SELECT * FROM bank_info b inner join loan_info l on b.bank_id=l.bank_id 
inner join cust_info c on b.bank_id=c.bank_id;

SELECT * FROM bank_info b inner join loan_info l on b.bank_id=l.bank_id;

SELECT * FROM bank_info b inner join cust_info c on b.bank_id=c.bank_id 
inner join loan_info l on c.cust_id=l.cust_id 
inner join insurance_info i on i.loan_id=l.loan_id;

SELECT * FROM loan_info;
SELECT * FROM cust_info;
SELECT * FROM insurance_info;