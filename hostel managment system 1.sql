-- Create the database
create database HostelManagementSystem;
go

-- Use the database
use HostelManagementSystem;
go

------------------------------TABLE NO 1 usertype_tbl
create table usertype_tbl (
    utype_id int identity(1, 1) primary key,
    type nvarchar(50) not null unique
);
go

insert into usertype_tbl (type) values
('admin'),
('manager'),
('customer');
go

select * from usertype_tbl
----------------------------TABLE NO 2 USER_TBL

CREATE TABLE user_tbl (
    user_id INT IDENTITY(1, 1) PRIMARY KEY,  -- Primary Key
    name NVARCHAR(50) NOT NULL,              -- Name (Required)
    contact NVARCHAR(50) NOT NULL UNIQUE,    -- Contact (Unique)
    cnic NVARCHAR(50) NOT NULL UNIQUE,       -- CNIC (Unique, No Format Restriction)
    address NVARCHAR(MAX) NULL,              -- Address (Optional)
    usertype_id INT NOT NULL,                -- Foreign Key
    FOREIGN KEY (usertype_id) REFERENCES usertype_tbl(utype_id)
);

-- Insert the values again (adjust if necessary)
INSERT INTO user_tbl (name, contact, cnic, address, usertype_id) VALUES
('Ahmed Ali', '03011234501', '61101-1234567-1', 'Karachi, Pakistan', 1),
('Fatima Zahra', '03211234502', '42101-2345678-2', 'Lahore, Pakistan', 2),
('Hassan Raza', '03331234503', '52201-3456789-3', 'Islamabad, Pakistan', 3),
('Ayesha Khan', '03011234504', '61101-1234567-4', 'Karachi, Pakistan', 1),
('Omar Farooq', '03211234505', '42101-2345678-5', 'Lahore, Pakistan', 2),
('Maryam Noor', '03331234506', '52201-3456789-6', 'Islamabad, Pakistan', 3),
('Ali Asghar', '03011234507', '61101-1234567-7', 'Karachi, Pakistan', 1),
('Khadijah Bano', '03211234508', '42101-2345678-8', 'Lahore, Pakistan', 2),
('Imran Shah', '03331234509', '52201-3456789-9', 'Islamabad, Pakistan', 3),
('Sadia Rehman', '03011234510', '61101-1234567-10', 'Karachi, Pakistan', 1),
('Yusuf Javed', '03211234511', '42101-2345678-11', 'Lahore, Pakistan', 2),
('Hafsa Qureshi', '03331234512', '52201-3456789-12', 'Islamabad, Pakistan', 3),
('Bilal Ahmed', '03011234513', '61101-1234567-13', 'Karachi, Pakistan', 1),
('Zainab Tariq', '03211234514', '42101-2345678-14', 'Lahore, Pakistan', 2),
('Musa Khan', '03331234515', '52201-3456789-15', 'Islamabad, Pakistan', 3),
('Samar Ali', '03011234516', '61101-1234567-16', 'Karachi, Pakistan', 1),
('Nadia Yousaf', '03211234517', '42101-2345678-17', 'Lahore, Pakistan', 2),
('Rashid Imran', '03331234518', '52201-3456789-18', 'Islamabad, Pakistan', 3),
('Aminah Rehman', '03011234519', '61101-1234567-19', 'Karachi, Pakistan', 1),
('Hassan Shahid', '03211234520', '42101-2345678-20', 'Lahore, Pakistan', 2),
('Saad Raza', '03331234521', '52201-3456789-21', 'Islamabad, Pakistan', 3),
('Ruqayyah Khan', '03011234522', '61101-1234567-22', 'Karachi, Pakistan', 1),
('Nabeel Ahmed', '03211234523', '42101-2345678-23', 'Lahore, Pakistan', 2),
('Zaid Uddin', '03331234524', '52201-3456789-24', 'Islamabad, Pakistan', 3),
('Sara Shams', '03011234525', '61101-1234567-25', 'Karachi, Pakistan', 1),
('Zain Shah', '03211234526', '42101-2345678-26', 'Lahore, Pakistan', 2),
('Tariq Yousaf', '03331234527', '52201-3456789-27', 'Islamabad, Pakistan', 3),
('Amina Sultana', '03011234528', '61101-1234567-28', 'Karachi, Pakistan', 1),
('Faisal Imran', '03211234529', '42101-2345678-29', 'Lahore, Pakistan', 2),
('Bilal Shahid', '03331234530', '52201-3456789-30', 'Islamabad, Pakistan', 3),
('Adeel Malik', '03011234531', '61101-1234567-31', 'Karachi, Pakistan', 1),
('Shazia Ali', '03211234532', '42101-2345678-32', 'Lahore, Pakistan', 2),
('Khalid Rehman', '03331234533', '52201-3456789-33', 'Islamabad, Pakistan', 3),
('Arisha Noor', '03011234534', '61101-1234567-34', 'Karachi, Pakistan', 1),
('Noman Tariq', '03211234535', '42101-2345678-35', 'Lahore, Pakistan', 2),
('Muneeb Ali', '03331234536', '52201-3456789-36', 'Islamabad, Pakistan', 3),
('Zeeshan Khan', '03011234537', '61101-1234567-37', 'Karachi, Pakistan', 1),
('Raza Haider', '03211234538', '42101-2345678-38', 'Lahore, Pakistan', 2),
('Anas Mehmood', '03331234539', '52201-3456789-39', 'Islamabad, Pakistan', 3),
('Sana Iqbal', '03011234540', '61101-1234567-40', 'Karachi, Pakistan', 1),
('Usman Akram', '03211234541', '42101-2345678-41', 'Lahore, Pakistan', 2),
('Tariq Javed', '03331234542', '52201-3456789-42', 'Islamabad, Pakistan', 3),
('Aiman Noor', '03011234543', '61101-1234567-43', 'Karachi, Pakistan', 1),
('Nashit Khan', '03211234544', '42101-2345678-44', 'Lahore, Pakistan', 2),
('Umar Bukhari', '03331234545', '52201-3456789-45', 'Islamabad, Pakistan', 3),
('Sadia Ali', '03011234546', '61101-1234567-46', 'Karachi, Pakistan', 1),
('Sufian Saleem', '03211234547', '42101-2345678-47', 'Lahore, Pakistan', 2);
('Fahad Ahmed', '03011234548', '61101-1234567-48', 'Karachi, Pakistan', 1),
('Muneeb Tariq', '03211234549', '42101-2345678-49', 'Lahore, Pakistan', 2),
('Samina Akhtar', '03331234550', '52201-3456789-50', 'Islamabad, Pakistan', 3),
('Farhan Ali', '03011234551', '61101-1234567-51', 'Karachi, Pakistan', 1),
('Sana Tariq', '03211234552', '42101-2345678-52', 'Lahore, Pakistan', 2),
('Junaid Khan', '03331234553', '52201-3456789-53', 'Islamabad, Pakistan', 3),
('Shan Ali', '03011234554', '61101-1234567-54', 'Karachi, Pakistan', 1),
('Bushra Ahmed', '03211234555', '42101-2345678-55', 'Lahore, Pakistan', 2),
('Wasiq Imran', '03331234556', '52201-3456789-56', 'Islamabad, Pakistan', 3),
('Mehreen Noor', '03011234557', '61101-1234567-57', 'Karachi, Pakistan', 1),
('Kashif Bukhari', '03211234558', '42101-2345678-58', 'Lahore, Pakistan', 2),
('Tariq Ali', '03331234559', '52201-3456789-59', 'Islamabad, Pakistan', 3),
('Sara Ali', '03011234560', '61101-1234567-60', 'Karachi, Pakistan', 1),
('Rauf Shah', '03211234561', '42101-2345678-61', 'Lahore, Pakistan', 2),
('Nida Jamil', '03331234562', '52201-3456789-62', 'Islamabad, Pakistan', 3),
('Rashid Khan', '03011234563', '61101-1234567-63', 'Karachi, Pakistan', 1),
('Sara Javed', '03211234564', '42101-2345678-64', 'Lahore, Pakistan', 2),
('Nashit Tariq', '03331234565', '52201-3456789-65', 'Islamabad, Pakistan', 3),
('Hassan Qureshi', '03011234566', '61101-1234567-66', 'Karachi, Pakistan', 1),
('Rehan Ahmed', '03211234567', '42101-2345678-67', 'Lahore, Pakistan', 2),
('Imran Niazi', '03331234568', '52201-3456789-68', 'Islamabad, Pakistan', 3),
('Mona Raza', '03011234569', '61101-1234567-69', 'Karachi, Pakistan', 1),
('Bilal Ahmad', '03211234570', '42101-2345678-70', 'Lahore, Pakistan', 2),
('Shahbaz Hussain', '03331234571', '52201-3456789-71', 'Islamabad, Pakistan', 3),
('Reema Bano', '03011234572', '61101-1234567-72', 'Karachi, Pakistan', 1),
('Raza Shah', '03211234573', '42101-2345678-73', 'Lahore, Pakistan', 2),
('Zain Ul Abidin', '03331234574', '52201-3456789-74', 'Islamabad, Pakistan', 3),
('Farah Zubair', '03011234575', '61101-1234567-75', 'Karachi, Pakistan', 1),
('Tariq Malik', '03211234576', '42101-2345678-76', 'Lahore, Pakistan', 2),
('Sana Farooq', '03331234577', '52201-3456789-77', 'Islamabad, Pakistan', 3),
('Sana Noor', '03011234578', '61101-1234567-78', 'Karachi, Pakistan', 1),
('Usman Zafar', '03211234579', '42101-2345678-79', 'Lahore, Pakistan', 2),
('Sufiyan Hussain', '03331234580', '52201-3456789-80', 'Islamabad, Pakistan', 3),
('Ayesha Shah', '03011234581', '61101-1234567-81', 'Karachi, Pakistan', 1),
('Hassan Imran', '03211234582', '42101-2345678-82', 'Lahore, Pakistan', 2),
('Marium Aslam', '03331234583', '52201-3456789-83', 'Islamabad, Pakistan', 3),
('Shazia Jamil', '03011234584', '61101-1234567-84', 'Karachi, Pakistan', 1),
('Zafar Iqbal', '03211234585', '42101-2345678-85', 'Lahore, Pakistan', 2),
('Shahzad Noor', '03331234586', '52201-3456789-86', 'Islamabad, Pakistan', 3);

-- Updating User with user_id = 13
UPDATE user_tbl
SET 
    name = 'Jaffar',   
    contact = '61101-1239567-1',       
    address = 'Updated Jehlum, Pakistan'
WHERE 
    user_id = 13;

-- Updating User with user_id = 12
UPDATE user_tbl
SET 
    name = 'Esha',   
    contact = '42101-2345678-2',       
    address = 'Updated Skht, Pakistan'
WHERE 
    user_id = 12;

-- Updating User with user_id = 14
UPDATE user_tbl
SET 
    name = 'Zubair',   
    contact = '52201-0456789-3',       
    address = 'Updated LHR, Pakistan'
WHERE 
    user_id = 14;

-- Updating User with user_id = 15
UPDATE user_tbl
SET 
    name = 'Ashi',   
    contact = '52201-3456783-3',       
    address = 'Updated LHR, Pakistan'
WHERE 
    user_id = 15;

UPDATE user_tbl
SET 
    name = 'Jaffar',   
    contact = '61101-1234567-100',  -- Ensure this is unique
    address = 'Updated Jehlum, Pakistan'
WHERE 
    user_id = 13;

-- Get all users sorted by name in ascending order
SELECT name, contact, address
FROM user_tbl
ORDER BY name ASC;

-- Get users sorted by contact number in descending order
SELECT name, contact, address
FROM user_tbl
ORDER BY contact DESC;

-- Get users sorted by usertype_id in ascending order
SELECT name, usertype_id
FROM user_tbl
ORDER BY usertype_id ASC;

-- Get the top 5 users from Karachi
SELECT TOP 5 * 
FROM user_tbl
WHERE address LIKE '%Karachi%'
ORDER BY name;

-- Get the first 10 users based on the alphabetical order of their names
SELECT TOP 10 * 
FROM user_tbl
ORDER BY name;

-- Count the total number of users in each city
SELECT address, COUNT(*) AS TotalUsers
FROM user_tbl
GROUP BY address;

-- Get the total number of users for each usertype_id
SELECT usertype_id, COUNT(*) AS TotalUsers
FROM user_tbl
GROUP BY usertype_id;

-- Find the first and last user by name
SELECT MIN(name) AS FirstUser, MAX(name) AS LastUser
FROM user_tbl;

-- Get distinct cities where users are located
SELECT DISTINCT address
FROM user_tbl;

-- Get distinct usertypes
SELECT DISTINCT usertype_id
FROM user_tbl;

-- Get users from Karachi, Lahore, and Islamabad
SELECT name, contact, address
FROM user_tbl
WHERE address IN ('Karachi, Pakistan', 'Lahore, Pakistan', 'Islamabad, Pakistan');

-- Get users with usertype_id between 1 and 2
SELECT name, contact, usertype_id
FROM user_tbl
WHERE usertype_id BETWEEN 1 AND 2;

-- Fetching all records from the user_tbl
select * from user_tbl;

-- Fetching CNICs from the user_tbl
select cnic from user_tbl;
select address from user_tbl;

----------------Table NO 3 HOSTEL_TBL
create table hostel_tbl (
    hostel_id int identity(1, 1) primary key,
    hostelname nvarchar(50) not null,
    address nvarchar(max) not null,
    city nvarchar(50) not null,
    phone bigint not null unique,
    user_id int not null,
    foreign key (user_id) references user_tbl(user_id),
    constraint chk_phone_valid check (phone > 1000000000)
);
go

-- Insert with the invalid phone number
INSERT INTO hostel_tbl (hostelname, address, city, phone, user_id) 
VALUES
('Al-Noor Hostel', '123 Main Road', 'Karachi', 2134567890, 9),
('Bait-ul-Islam Hostel', '45 Second Street', 'Lahore', 2134567891, 12),
('Test Hostel', '123 Sample Street', 'Karachi', 1000009999, 15); -- updated phone number
('Sunshine Hostel', '101 First Avenue', 'Karachi', 2134567900, 18),
('Green Valley Hostel', '202 Green Street', 'Lahore', 2134567901, 21),
('River View Hostel', '303 Riverside Road', 'Islamabad', 2134567902, 24),
('City Center Hostel', '404 Central Road', 'Karachi', 2134567903, 27),
('Silver Oak Hostel', '505 Oak Lane', 'Lahore', 2134567904, 30),
('Blue Sky Hostel', '606 Sky Street', 'Islamabad', 2134567905, 33),
('Golden Gate Hostel', '707 Golden Road', 'Karachi', 2134567906, 36),
('Royal Stay Hostel', '808 Royal Street', 'Lahore', 2134567907, 39),
('Peaceful Haven Hostel', '909 Peace Road', 'Islamabad', 2134567908, 42),
('Star View Hostel', '1010 Star Avenue', 'Karachi', 2134567909, 45),
('Elite Stay Hostel', '1111 Elite Lane', 'Lahore', 2134567910, 48),
('Luxury Hostel', '1212 Luxury Road', 'Islamabad', 2134567911, 51),
('Paradise Hostel', '1313 Paradise Lane', 'Karachi', 2134567912, 54),
('Hilltop Hostel', '1414 Hilltop Road', 'Lahore', 2134567913, 10),
('Royal Crescent Hostel', '1515 Crescent Street', 'Islamabad', 2134567914, 13),
('Majestic Hostel', '1616 Majestic Road', 'Karachi', 2134567915, 16),
('City Lights Hostel', '1717 Lights Avenue', 'Lahore', 2134567916, 19),
('Sunny Side Hostel', '1818 Sunshine Road', 'Islamabad', 2134567917, 22),
('Mountain View Hostel', '1919 Mountain Lane', 'Karachi', 2134567918, 31),
('Vibrant Hostel', '2020 Vibrant Road', 'Lahore', 2134567919, 34);
GO

select USER_ID from user_tbl
select * from hostel_tbl

-------QUERIES OF HOSTEL_TBL
-- Update the address and phone number for 'Al-Noor Hostel'
UPDATE hostel_tbl
SET address = '456 New Main Road', phone = 2134567899
WHERE hostelname = 'Al-Noor Hostel';

-- Update the city for the hostel with 'hostel_id' 9
UPDATE hostel_tbl
SET city = 'Karachi'
WHERE hostel_id = 9;

-- Update the user_id for 'Test Hostel'
UPDATE hostel_tbl
SET user_id = 10
WHERE hostelname = 'Test Hostel';

-- Setting a new address and city for a specific hostel
UPDATE hostel_tbl
SET address = '777 Main Avenue', city = 'Lahore'
WHERE hostelname = 'Silver Oak Hostel';

-- Using the SET clause to update multiple records
UPDATE hostel_tbl
SET phone = 2134567910
WHERE city = 'Karachi' AND hostelname = 'Golden Gate Hostel';

-- Get all hostels in Karachi
SELECT * FROM hostel_tbl
WHERE city = 'Karachi';

-- Get details of hostels with a phone number greater than a certain value
SELECT hostelname, address, phone
FROM hostel_tbl
WHERE phone > 2134567900;

-- Get hostels with user_id between 10 and 30
SELECT hostelname, city, user_id
FROM hostel_tbl
WHERE user_id BETWEEN 10 AND 30;

-- Get the hostel with the highest phone number
SELECT TOP 1 hostelname, phone
FROM hostel_tbl
ORDER BY phone DESC;

-- Get all hostels with city 'Lahore' and phone number less than a certain value
SELECT hostelname, phone, city
FROM hostel_tbl
WHERE city = 'Lahore' AND phone < 2134567910;

-- Get the number of hostels in Islamabad
SELECT COUNT(*) AS TotalHostels
FROM hostel_tbl
WHERE city = 'Islamabad';

-- Delete a hostel by hostelname
DELETE FROM hostel_tbl
WHERE hostelname = 'Test Hostel';

-- Delete a hostel with a specific phone number
DELETE FROM hostel_tbl
WHERE phone = 2134567905;

-- Get the total number of hostels
SELECT COUNT(*) AS TotalHostels
FROM hostel_tbl;

-- Get the average phone number (just as an example)
SELECT AVG(phone) AS AveragePhone
FROM hostel_tbl;

-- Get the minimum and maximum phone numbers
SELECT MIN(phone) AS MinPhone, MAX(phone) AS MaxPhone
FROM hostel_tbl;

-- Sort hostels by hostelname in ascending order
SELECT hostelname, city, phone
FROM hostel_tbl
ORDER BY hostelname ASC;

-- Sort hostels by phone number in descending order
SELECT hostelname, city, phone
FROM hostel_tbl
ORDER BY phone DESC;

-- Get the top 5 hostels with the highest phone numbers
SELECT TOP 5 hostelname, phone
FROM hostel_tbl
ORDER BY phone DESC;

-- Get the first 10 hostels in alphabetical order
SELECT TOP 10 hostelname
FROM hostel_tbl
ORDER BY hostelname;

-- Get hostel names along with their user names (assuming you have a 'user_tbl')
SELECT h.hostelname, u.name AS UserName
FROM hostel_tbl h
JOIN user_tbl u ON h.user_id = u.user_id;

-----------------------------TABLE NO 4 roomtype_tbl
-- Create the roomtype_tbl table
CREATE TABLE roomtype_tbl (
    rtype_id INT IDENTITY(1, 1) PRIMARY KEY,  -- Primary Key
    type NVARCHAR(50) NOT NULL UNIQUE,         -- Room Type (Unique)
    noofbeds INT NOT NULL CHECK (noofbeds > 0) -- Number of beds (Positive constraint)
);
GO

-- Insert initial values into the table
INSERT INTO roomtype_tbl (type, noofbeds) VALUES
('Single', 1),
('Double', 2);
GO

-- More insertions with additional room types
INSERT INTO roomtype_tbl (type, noofbeds) VALUES
('Triple', 3),
('Quad', 4),
('Studio', 1),
('Suite', 2),
('Penthouse', 5),
('Family Room', 4),
('King Room', 1),
('Queen Room', 2),
('Bunk Bed', 1),
('Dormitory', 6);
GO

SELECT * FROM roomtype_tbl;

SELECT * FROM roomtype_tbl
WHERE type = 'Double';

SELECT * FROM roomtype_tbl
WHERE noofbeds > 2;

SELECT * FROM roomtype_tbl
ORDER BY noofbeds ASC;

SELECT COUNT(*) AS total_room_types FROM roomtype_tbl;

SELECT * FROM roomtype_tbl
WHERE noofbeds = (SELECT MAX(noofbeds) FROM roomtype_tbl);

SELECT * FROM roomtype_tbl
WHERE noofbeds BETWEEN 2 AND 4;

SELECT * FROM roomtype_tbl
ORDER BY type;

SELECT type, noofbeds FROM roomtype_tbl
WHERE rtype_id = 3;


------------------------Table no 5 room_tbl

-- Create the room_tbl table
CREATE TABLE room_tbl (
    room_id INT IDENTITY(1, 1) PRIMARY KEY,          -- Primary key for the room
    roomno NVARCHAR(50) NOT NULL UNIQUE,              -- Unique room number
    rtype_id INT NOT NULL,                            -- Foreign key referencing roomtype_tbl
    floor INT NOT NULL CHECK (floor > 0),             -- Floor number, must be greater than 0
    hostel_id INT NOT NULL,                           -- Foreign key referencing hostel_tbl
    FOREIGN KEY (rtype_id) REFERENCES roomtype_tbl(rtype_id),  -- Foreign key constraint for room type
    FOREIGN KEY (hostel_id) REFERENCES hostel_tbl(hostel_id)  -- Foreign key constraint for hostel
);
GO


INSERT INTO room_tbl (roomno, rtype_id, floor, hostel_id) 
VALUES
('101', 1, 1, 4),  -- Room 101 of type 1, floor 1, in hostel 1
('102', 2, 1, 5),  -- Room 102 of type 2, floor 1, in hostel 1
('201', 1, 2, 6),  -- Room 201 of type 1, floor 2, in hostel 2
('202', 2, 2, 7),  -- Room 202 of type 2, floor 2, in hostel 2
('301', 1, 3, 8),  -- Room 301 of type 1, floor 3, in hostel 3
('302', 2, 3, 9),  -- Room 302 of type 2, floor 3, in hostel 3
('401', 1, 4, 15),  -- Room 401 of type 1, floor 4, in hostel 4
('402', 2, 4, 13),  -- Room 402 of type 2, floor 4, in hostel 4
('501', 1, 5, 14),  -- Room 501 of type 1, floor 5, in hostel 5
('502', 2, 5, 22);  -- Room 502 of type 2, floor 5, in hostel 5
GO

SELECT * FROM room_tbl;
SELECT roomno, rtype_id, hostel_id FROM room_tbl;
SELECT roomno, rtype_id, floor, hostel_id
FROM room_tbl
WHERE floor = 1;
SELECT roomno, rtype_id, floor
FROM room_tbl
WHERE hostel_id = 5;
SELECT roomno, floor, hostel_id
FROM room_tbl
WHERE rtype_id = 1;
SELECT roomno, hostel_id
FROM room_tbl
WHERE floor = 3 AND rtype_id = 2;
SELECT hostel_id, COUNT(*) AS number_of_rooms
FROM room_tbl
GROUP BY hostel_id;





-----------TABLE NO 7 FACILITIES TBL

-- Create the facilities_tbl table
CREATE TABLE facilities_tbl (
    f_id INT IDENTITY(1, 1) PRIMARY KEY,     -- Primary key for the facility
    facilityname NVARCHAR(50) NOT NULL UNIQUE -- Facility name must be unique and cannot be null
);
GO

-- Insert records into the facilities_tbl
INSERT INTO facilities_tbl (facilityname) VALUES
('WiFi'),                                -- Facility: WiFi
('Air Conditioning'),                     -- Facility: Air Conditioning
('Laundry Service'),                      -- Facility: Laundry Service
('Gym'),                                  -- Facility: Gym
('24/7 Security'),                        -- Facility: 24/7 Security
('Free Parking'),                         -- Facility: Free Parking
('Hot Water'),                            -- Facility: Hot Water
('Breakfast Included'),                   -- Facility: Breakfast Included
('Swimming Pool'),                        -- Facility: Swimming Pool
('CCTV Surveillance');                    -- Facility: CCTV Surveillance
GO

SELECT * FROM facilities_tbl;

SELECT * FROM facilities_tbl
WHERE f_id = 3;

SELECT facilityname FROM facilities_tbl
WHERE f_id = 5;

SELECT COUNT(*) AS total_facilities FROM facilities_tbl;

SELECT * FROM facilities_tbl
ORDER BY facilityname ASC;

SELECT * FROM facilities_tbl
WHERE facilityname LIKE '%Water%';

SELECT TOP 5 * FROM facilities_tbl;


-----------------------------TABLE NO 8 roomfacilities_tbl
CREATE TABLE roomfacilities_tbl (
    rf_id INT IDENTITY(1, 1) PRIMARY KEY,          -- Primary key for the room-facility relationship
    room_id INT NOT NULL,                           -- Foreign key referencing the room_tbl table
    facility_id INT NOT NULL,                       -- Foreign key referencing the facilities_tbl table
    FOREIGN KEY (room_id) REFERENCES room_tbl(room_id),   -- Ensures room_id exists in room_tbl
    FOREIGN KEY (facility_id) REFERENCES facilities_tbl(f_id), -- Ensures facility_id exists in facilities_tbl
    CONSTRAINT uq_room_facility UNIQUE (room_id, facility_id)  -- Ensures unique combinations of room and facility
);
GO
-- Inserting facilities into roomfacilities_tbl
INSERT INTO roomfacilities_tbl (room_id, facility_id) 
VALUES
(6, 1),  -- Room 1 with facility WiFi
(7, 2),  -- Room 1 with facility Air Conditioning
(8, 3),  -- Room 2 with facility Laundry Service
(9, 1),  -- Room 2 with facility WiFi
(10, 2),  -- Room 2 with facility Air Conditioning
(11, 1),  -- Room 3 with facility WiFi
(12, 3),  -- Room 3 with facility Laundry Service
(13, 1),  -- Room 4 with facility WiFi
(14, 2),  -- Room 4 with facility Air Conditioning
(15, 1)  -- Room 5 with facility WiFi
go

select * from roomfacilities_tbl
---------------Select room IDs and their corresponding facility names:
SELECT 
    rf.rf_id,
    r.roomno AS Room_Number,
    f.facilityname AS Facility
FROM 
    roomfacilities_tbl rf
JOIN 
    room_tbl r ON rf.room_id = r.room_id
JOIN 
    facilities_tbl f ON rf.facility_id = f.f_id;
------------------------- Select rooms that have a specific facility (e.g., WiFi):
	SELECT 
    r.roomno AS Room_Number, 
    f.facilityname AS Facility
FROM 
    roomfacilities_tbl rf
JOIN 
    room_tbl r ON rf.room_id = r.room_id
JOIN 
    facilities_tbl f ON rf.facility_id = f.f_id
WHERE 
    f.facilityname = 'WiFi';
--------------------Count the number of facilities per room:

	SELECT 
    r.roomno AS Room_Number,
    COUNT(rf.facility_id) AS Number_of_Facilities
FROM 
    roomfacilities_tbl rf
JOIN 
    room_tbl r ON rf.room_id = r.room_id
GROUP BY 
    r.roomno;


---------------------------------Table No 8 Amenities tbl
-- Create the amenities_tbl table
CREATE TABLE amenities_tbl (
    am_id INT IDENTITY(1, 1) PRIMARY KEY,           -- Primary key for the amenities
    hostel_id INT NOT NULL,                          -- Foreign key referencing hostel_tbl
    amenity NVARCHAR(50) NOT NULL UNIQUE,            -- Unique amenity name for each hostel
    FOREIGN KEY (hostel_id) REFERENCES hostel_tbl(hostel_id)  -- Foreign key constraint for hostel_id
);
GO

-- Inserting amenities data into amenities_tbl
INSERT INTO amenities_tbl (hostel_id, amenity) 
VALUES
(6, 'Prayer Area'),        -- Amenity for hostel 1
(4, 'Cafeteria'),          -- Amenity for hostel 1
(16, 'Parking'),            -- Amenity for hostel 2
(14, 'Gym'),                -- Amenity for hostel 2
(25, 'Swimming Pool'),      -- Amenity for hostel 3
(23, 'Library'),            -- Amenity for hostel 3
(26, 'Event Hall'),         -- Amenity for hostel 4
(22, 'Study Room'),         -- Amenity for hostel 5
(9, 'Free WiFi');          -- Amenity for hostel 6
GO

select * from amenities_tbl

SELECT 
    a.amenity
FROM 
    amenities_tbl a
JOIN 
    hostel_tbl h ON a.hostel_id = h.hostel_id
WHERE 
    h.hostel_id = '6';  -- Replace with the hostel name you're interested in

SELECT DISTINCT
    a.amenity
FROM 
    amenities_tbl a;

	SELECT 
    a.amenity
FROM 
    amenities_tbl a
WHERE 
    a.hostel_id = 22;  -- Replace with the hostel_id you're interested in

SELECT 
    h.hostelname, 
    a.amenity
FROM 
    amenities_tbl a
JOIN 
    hostel_tbl h ON a.hostel_id = h.hostel_id
WHERE 
    h.hostelname IN ('Bait-ul-Islam Hostel', 'Test Hostel');  -- Replace with the hostels you're interested in


---------------------------------TABLE NO 9 roombooking_tbl
CREATE TABLE roombooking_tbl (
    roombooking_id INT IDENTITY(1, 1) PRIMARY KEY,  -- Primary key for the room booking
    room_id INT NOT NULL,                            -- Foreign key referencing room_tbl
    user_id INT NOT NULL,                            -- Foreign key referencing user_tbl
    FOREIGN KEY (room_id) REFERENCES room_tbl(room_id),  -- Foreign key constraint for room_id
    FOREIGN KEY (user_id) REFERENCES user_tbl(user_id),  -- Foreign key constraint for user_id
    CONSTRAINT uq_booking UNIQUE (room_id, user_id)   -- Ensures a room can only be booked by one user at a time
);
GO

INSERT INTO roombooking_tbl (room_id, user_id) 
VALUES
(6, 9),  -- Booking room 3 for user 5
(7, 10),  -- Booking room 4 for user 6
(8, 11),  -- Booking room 5 for user 2
(9, 12),  -- Booking room 6 for user 7
(10, 13);  -- Booking room 7 for user 8
GO

select * from user_tbl
select * from room_tbl

SELECT 
    rb.roombooking_id,    -- Booking ID
    r.roomno,              -- Room number
    rb.room_id,            -- Room ID
    rb.user_id             -- User ID
FROM 
    roombooking_tbl rb
JOIN 
    room_tbl r ON rb.room_id = r.room_id  -- Joining on room_id
JOIN 
    user_tbl u ON rb.user_id = u.user_id;  -- Joining on user_id



---------------------	Table No 10 Feedback Table
CREATE TABLE feedback_tbl (
    feedback_id INT IDENTITY(1, 1) PRIMARY KEY,  -- Primary key for the feedback
    hostel_id INT NOT NULL,                        -- Foreign key referencing hostel_tbl
    user_id INT NOT NULL,                          -- Foreign key referencing user_tbl
    feedback NVARCHAR(MAX),                        -- The actual feedback text
    rating INT CHECK (rating >= 1 AND rating <= 5), -- Rating between 1 and 5
    date DATETIME DEFAULT GETDATE(),               -- Date of feedback submission (default is current date/time)
    FOREIGN KEY (hostel_id) REFERENCES hostel_tbl(hostel_id),  -- Foreign key constraint for hostel_id
    FOREIGN KEY (user_id) REFERENCES user_tbl(user_id)         -- Foreign key constraint for user_id
);
GO

-- Inserting feedback data into feedback_tbl
-- Inserting more feedback data into feedback_tbl
INSERT INTO feedback_tbl (hostel_id, user_id, feedback, rating) 
VALUES
(4, 9, 'Quiet and peaceful environment', 5),  -- Feedback from user 4 about hostel 3
(5, 10, 'Friendly staff, but the rooms could be better', 3),  -- Feedback from user 5 about hostel 4
(6, 11, 'Clean and well-maintained facilities', 4),  -- Feedback from user 6 about hostel 5
(7, 12, 'Good value for money, but noisy at night', 3),  -- Feedback from user 7 about hostel 2
(8, 13, 'Excellent service, I enjoyed my stay!', 5),  -- Feedback from user 8 about hostel 1
(9, 14, 'Great amenities, but needs more cleaning staff', 4),  -- Feedback from user 9 about hostel 3
(10, 15, 'Had an issue with the hot water, but everything else was fine', 3),  -- Feedback from user 10 about hostel 4
(11, 16, 'Great location, very convenient', 4),  -- Feedback from user 11 about hostel 5
(12, 17, 'Overall experience was great, would stay again', 5),  -- Feedback from user 12 about hostel 2
(13, 22, 'Affordable and cozy rooms', 4);  -- Feedback from user 13 about hostel 1
GO

Select * from hostel_tbl
Select * from user_tbl

SELECT * 
FROM feedback_tbl;

SELECT * 
FROM feedback_tbl
WHERE hostel_id = 4;

SELECT * 
FROM feedback_tbl
WHERE user_id = 10;

SELECT * 
FROM feedback_tbl
WHERE rating = 5;

SELECT hostel_id, AVG(rating) AS average_rating
FROM feedback_tbl
GROUP BY hostel_id;

SELECT f.feedback_id, f.feedback, f.rating, f.date
FROM feedback_tbl f
JOIN user_tbl u ON f.user_id = u.user_id
ORDER BY f.date DESC;



--------VIEWS JOINS
----User Details View
create view vw_user_details as
select u.user_id, u.name, u.contact, u.cnic, u.address, ut.type as user_type
from user_tbl u
join usertype_tbl ut on u.usertype_id = ut.utype_id;
go


------Hostel Details View
create view vw_hostel_details as
select h.hostel_id, h.hostelname, h.address, h.city, h.phone, u.name as owner_name
from hostel_tbl h
join user_tbl u on h.user_id = u.user_id;
go


------Room Facilities View
create view vw_room_facilities as
select r.room_id, r.roomno, rt.type as room_type, h.hostelname, f.facilityname
from room_tbl r
join roomtype_tbl rt on r.rtype_id = rt.rtype_id
join hostel_tbl h on r.hostel_id = h.hostel_id
join roomfacilities_tbl rf on r.room_id = rf.room_id
join facilities_tbl f on rf.facility_id = f.f_id;
go


------Room Booking Details View
create view vw_room_bookings as
select rb.roombooking_id, r.roomno, u.name as user_name, h.hostelname
from roombooking_tbl rb
join room_tbl r on rb.room_id = r.room_id
join user_tbl u on rb.user_id = u.user_id
join hostel_tbl h on r.hostel_id = h.hostel_id;
go

------------Feedback
CREATE VIEW vw_feedback_details AS
SELECT f.feedback_id, f.feedback, f.rating, f.date, u.name AS user_name, h.hostelname
FROM feedback_tbl f
JOIN user_tbl u ON f.user_id = u.user_id
JOIN hostel_tbl h ON f.hostel_id = h.hostel_id;
GO

----------------Room availability
CREATE VIEW vw_room_availability AS
SELECT r.roomno, h.hostelname, r.floor
FROM room_tbl r
JOIN hostel_tbl h ON r.hostel_id = h.hostel_id
LEFT JOIN roombooking_tbl rb ON r.room_id = rb.room_id
WHERE rb.room_id IS NULL;  -- No booking exists for the room
GO

------------------Amenities
CREATE VIEW vw_amenities_details AS
SELECT a.am_id, a.amenity, h.hostelname
FROM amenities_tbl a
JOIN hostel_tbl h ON a.hostel_id = h.hostel_id;
GO

----------------room type view
CREATE VIEW vw_room_type_overview AS
SELECT r.roomno, rt.type AS room_type, r.floor, h.hostelname
FROM room_tbl r
JOIN roomtype_tbl rt ON r.rtype_id = rt.rtype_id
JOIN hostel_tbl h ON r.hostel_id = h.hostel_id;
GO

--------------------hostel rating
CREATE VIEW vw_hostel_ratings AS
SELECT h.hostelname, AVG(f.rating) AS average_rating
FROM feedback_tbl f
JOIN hostel_tbl h ON f.hostel_id = h.hostel_id
GROUP BY h.hostelname;
GO


------------------All facilities in rooms view
CREATE VIEW vw_all_facilities_in_rooms AS
SELECT r.roomno, f.facilityname, h.hostelname
FROM roomfacilities_tbl rf
JOIN room_tbl r ON rf.room_id = r.room_id
JOIN facilities_tbl f ON rf.facility_id = f.f_id
JOIN hostel_tbl h ON r.hostel_id = h.hostel_id;
GO

-------------Hostel and amenities overview
CREATE VIEW vw_hostel_amenities_overview AS
SELECT h.hostelname, a.amenity
FROM amenities_tbl a
JOIN hostel_tbl h ON a.hostel_id = h.hostel_id;
GO

----------------Room_details View
CREATE VIEW vw_room_details AS
SELECT r.roomno, rt.type AS room_type, r.floor, h.hostelname
FROM room_tbl r
JOIN roomtype_tbl rt ON r.rtype_id = rt.rtype_id
JOIN hostel_tbl h ON r.hostel_id = h.hostel_id;
GO

SELECT * FROM vw_feedback_details;


-----testing

select * from vw_room_bookings;

-- Get all user details from the view
select * from vw_user_details;

-- Get all room bookings from the view
select * from vw_room_bookings;

-- Testing query for the hostel details view
SELECT * FROM vw_hostel_details;

-- Testing query for the room facilities view
SELECT * FROM vw_room_facilities;

-- Testing query for the feedback details view
SELECT * FROM vw_feedback_details;

-- Testing query for the room availability view
SELECT * FROM vw_room_availability;

-- Testing query for the amenities details view
SELECT * FROM vw_amenities_details;

-- Testing query for the room type overview view
SELECT * FROM vw_room_type_overview;

-- Testing query for the hostel ratings view
SELECT * FROM vw_hostel_ratings;

-- Testing query for the room details view
SELECT * FROM vw_room_details;

-- Testing query for the all facilities in rooms view
SELECT * FROM vw_all_facilities_in_rooms;

-- Testing query for the hostel and amenities overview view
SELECT * FROM vw_hostel_amenities_overview;

---users which complete its info
	SELECT 
    u.user_id, u.name AS user_name, u.contact, u.cnic, u.address, ut.type AS user_type,
    h.hostel_id, h.hostelname, h.address AS hostel_address, h.city AS hostel_city, h.phone AS hostel_phone,
    r.room_id, r.roomno, rt.type AS room_type, r.floor, r.hostel_id AS room_hostel_id,
    rf.facility_id, f.facilityname AS room_facility,
    rb.roombooking_id, rb.room_id AS booking_room_id, rb.user_id AS booking_user_id, 
    fb.feedback_id, fb.feedback, fb.rating AS feedback_rating, fb.date AS feedback_date, 
    am.am_id, am.amenity
FROM 
    user_tbl u
-- Join to get the user type from usertype_tbl
JOIN 
    usertype_tbl ut ON u.usertype_id = ut.utype_id
-- Join to get the hostel details that the user owns or is associated with
JOIN 
    hostel_tbl h ON u.user_id = h.user_id
-- Join to get room details for the hostel
JOIN 
    room_tbl r ON r.hostel_id = h.hostel_id
-- Join to get the room type from roomtype_tbl
JOIN 
    roomtype_tbl rt ON r.rtype_id = rt.rtype_id
-- Join to get the facilities for the rooms
JOIN 
    roomfacilities_tbl rf ON r.room_id = rf.room_id
JOIN 
    facilities_tbl f ON rf.facility_id = f.f_id
-- Join to get booking details (which user has booked which room)
JOIN 
    roombooking_tbl rb ON rb.room_id = r.room_id
-- Join to get feedback data given by users
JOIN 
    feedback_tbl fb ON fb.hostel_id = h.hostel_id
-- Join to get amenities for the hostels
JOIN 
    amenities_tbl am ON am.hostel_id = h.hostel_id
ORDER BY 
    u.user_id, h.hostel_id, r.room_id, rb.roombooking_id, fb.feedback_id;


-----------SHOW NO OF TABLES
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG = 'HostelManagementSystem';


-----------------show data of users
	SELECT 
    u.user_id, u.name, u.contact, u.cnic, u.address, ut.type AS user_type,
    h.hostel_id, h.hostelname, h.address AS hostel_address, h.city, h.phone AS hostel_phone,
    r.room_id, r.roomno, rt.type AS room_type, r.floor, r.hostel_id AS room_hostel_id,
    rf.facility_id, f.facilityname,
    rb.roombooking_id, rb.room_id AS booking_room_id, rb.user_id AS booking_user_id, 
    fb.feedback_id, fb.feedback, fb.rating, fb.date AS feedback_date, 
    am.am_id, am.amenity
FROM 
    user_tbl u
LEFT JOIN 
    usertype_tbl ut ON u.usertype_id = ut.utype_id
LEFT JOIN 
    hostel_tbl h ON u.user_id = h.user_id
LEFT JOIN 
    room_tbl r ON r.hostel_id = h.hostel_id
LEFT JOIN 
    roomtype_tbl rt ON r.rtype_id = rt.rtype_id
LEFT JOIN 
    roomfacilities_tbl rf ON r.room_id = rf.room_id
LEFT JOIN 
    facilities_tbl f ON rf.facility_id = f.f_id
LEFT JOIN 
    roombooking_tbl rb ON rb.room_id = r.room_id
LEFT JOIN 
    feedback_tbl fb ON fb.hostel_id = h.hostel_id
LEFT JOIN 
    amenities_tbl am ON am.hostel_id = h.hostel_id
ORDER BY 
    u.user_id, h.hostel_id, r.room_id, rb.roombooking_id, fb.feedback_id;




