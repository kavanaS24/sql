CREATE DATABASE works;
USE works;
CREATE TABLE hospital_info (id INT PRIMARY KEY, name VARCHAR(100),address VARCHAR(200),city VARCHAR(50),state VARCHAR(50),country VARCHAR(50),phone_number INT,email VARCHAR(100),website VARCHAR(100),speciality VARCHAR(100));
INSERT INTO hospital_info (id, name, address, city, state, country, phone_number, email, website, speciality)
VALUES
(1, 'Apollo Hospital', '123 Main St', 'Chennai', 'Tamil Nadu', 'India', 0442855555, 'apollo@example.com', '(link unavailable)', 'Cardiology'),
(2, 'Fortis Hospital', '456 MG Road', 'Bangalore', 'Karnataka', 'India', 0802211444, 'fortis@example.com', '(link unavailable)', 'Neurology'),
(3, 'Max Hospital', '789 Saket', 'New Delhi', 'Delhi', 'India', 0114055555, 'max@example.com', '(link unavailable)', 'Oncology'),
(4, 'Manipal Hospital', '321 Doddaballapur', 'Bangalore', 'Karnataka', 'India', 0802855555, 'manipal@example.com', '(link unavailable)', 'Orthopedics'),
(5, 'Medanta Hospital', '234 Golf Course Road', 'Gurgaon', 'Haryana', 'India', 0124222555, 'medanta@example.com', '(link unavailable)', 'Cardiology'),
(6, 'Sir Ganga Ram Hospital', '567 Rajinder Nagar', 'New Delhi', 'Delhi', 'India', 0114222555, 'sirgangaram@example.com', '(link unavailable)', 'Nephrology'),
(7, 'Kokilaben Hospital', '890 Parel', 'Mumbai', 'Maharashtra', 'India', 0222405555, 'kokilaben@example.com', '(link unavailable)', 'Oncology'),
(8, 'Reliance Hospital', '345 Powai', 'Mumbai', 'Maharashtra', 'India', 0222855555, 'reliance@example.com', '(link unavailable)', 'Cardiology'),
(9, 'Batra Hospital', '678 Tughlakabad', 'New Delhi', 'Delhi', 'India', 0114222555, 'batra@example.com', '(link unavailable)', 'Orthopedics'),
(10, 'Columbia Asia Hospital', '567 Hebbal', 'Bangalore', 'Karnataka', 'India', 0802855555, 'columbia@example.com', '(link unavailable)', 'Neurology'),
(11, 'Sagar Hospital', '456 Banashankari', 'Bangalore', 'Karnataka', 'India', 0802855555, 'sagar@example.com', '(link unavailable)', 'Cardiology'),
(12, 'Mallya Hospital', '789 Vittal Mallya Road', 'Bangalore', 'Karnataka', 'India', 0802855555, 'mallya@example.com', '(link unavailable)', 'Oncology'),
(13, 'BGS Global Hospital', '321 Kengeri', 'Bangalore', 'Karnataka', 'India', 0802855555, 'bgs@example.com', '(link unavailable)', 'Orthopedics'),
(14, 'Aster CMI Hospital', '567 Hebbal', 'Bangalore', 'Karnataka', 'India', 0802855555, 'aster@example.com', '(link unavailable)', 'Neurology'),
(15, 'Narayana Hrudayalaya Hospital', '456 Hosur Road', 'Bangalore', 'Karnataka', 'India', 0802855555, 'narayana@example.com', '(link unavailable)', 'Cardiology'),
(16, 'Gleneagles Global Hospital', '789 Richmond Road', 'Bangalore', 'Karnataka', 'India', 0802855555, 'gleneagles@example.com', '(link unavailable)', 'Oncology'),
(17, 'Apollo Spectra Hospital', '321 Koramangala', 'Bangalore', 'Karnataka', 'India', 0802855555, 'apollo@example.com', '(link unavailable)', 'Orthopedics');
DESC hospital_info;
SELECT * FROM hospital_info;

CREATE TABLE tourist_places (id INT PRIMARY KEY,name VARCHAR(100),address VARCHAR(200),city VARCHAR(50),state VARCHAR(50),country VARCHAR(50),description VARCHAR(200),rating INT,reviews INT,website VARCHAR(100),image_url VARCHAR(100));
INSERT INTO tourist_places (id, name, address, city, state, country, description, rating, reviews, website, image_url)
VALUES
(1, 'Taj Mahal', 'Dharmapuri Forest Colony Tajganj', 'Agra', 'Uttar Pradesh', 'India', 'Mughal mausoleum and UNESCO World Heritage Site', 5, 10000, '(link unavailable)', '(link unavailable)'),
(2, 'Golden Temple', 'Golden Temple Rd Amritsar', 'Amritsar', 'Punjab', 'India', 'Sikh temple and UNESCO World Heritage Site', 5, 5000, '(link unavailable)', '(link unavailable)'),
(3, 'Qutub Minar', 'Mehrauli, New Delhi', 'New Delhi', 'Delhi', 'India', 'Minaret and UNESCO World Heritage Site', 5, 2000, '(link unavailable)', '(link unavailable)'),
(4, 'Red Fort', 'Netaji Subhash Marg, New Delhi', 'New Delhi', 'Delhi', 'India', 'Mughal fort and UNESCO World Heritage Site', 5, 1500, '(link unavailable)', '(link unavailable)'),
(5, 'India Gate', 'Rajpath, New Delhi', 'New Delhi', 'Delhi', 'India', 'War memorial and popular tourist attraction', 4, 1000, '(link unavailable)', '(link unavailable)'),
(6, 'Gateway of India', 'Apollo Bandar, Mumbai', 'Mumbai', 'Maharashtra', 'India', 'Monument and popular tourist attraction', 4, 500, '(link unavailable)', '(link unavailable)'),
(7, 'Varanasi Ghat', 'Ganges River, Varanasi', 'Varanasi', 'Uttar Pradesh', 'India', 'Hindu pilgrimage site and UNESCO World Heritage Site', 5, 2000, '(link unavailable)', '(link unavailable)'),
(8, 'Victoria Memorial', '1, Queen Way, Kolkata', 'Kolkata', 'West Bengal', 'India', 'Museum and memorial to Queen Victoria', 4, 500, '(link unavailable)', '(link unavailable)'),
(9, 'Hawa Mahal', 'Hawa Mahal Rd, Jaipur', 'Jaipur', 'Rajasthan', 'India', 'Palace and UNESCO World Heritage Site', 5, 1000, '(link unavailable)', '(link unavailable)'),
(10, 'Amer Fort', 'Devisinghpura, Amer', 'Jaipur', 'Rajasthan', 'India', 'Fort and UNESCO World Heritage Site', 5, 500, '(link unavailable)', '(link unavailable)'),
(11, 'Mysore Palace', 'Sayyaji Rao Rd, Mysuru', 'Mysuru', 'Karnataka', 'India', 'Palace and UNESCO World Heritage Site', 5, 200, '(link unavailable)', '(link unavailable)'),
(12, 'Meenakshi Amman Temple', 'East Chitrai St, Madurai', 'Madurai', 'Tamil Nadu', 'India', 'Hindu temple and UNESCO World Heritage Site', 5, 100, '(link unavailable)');
DESC tourist_places;
SELECT * FROM tourist_places;
