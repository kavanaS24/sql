CREATE DATABASE course;
USE course;
CREATE TABLE state_info (
  state_id INT,
  state_name VARCHAR(255),
  capital VARCHAR(255),
  population INT,
  area INT,
  language VARCHAR(255),
  religion VARCHAR(255),
  literacy_rate INT,
  density INT,
  founded_year INT
);
ALTER TABLE state_info ADD COLUMN state_code VARCHAR(255);
ALTER TABLE state_info ADD COLUMN state_governor VARCHAR(255);
ALTER TABLE state_info ADD COLUMN state_deputy_governor VARCHAR(255);
ALTER TABLE state_info ADD COLUMN state_area_code INT;
ALTER TABLE state_info ADD COLUMN state_zip_code VARCHAR(255);
ALTER TABLE state_info RENAME COLUMN state_name TO state_full_name;
ALTER TABLE state_info RENAME COLUMN capital TO state_capital_city;
ALTER TABLE state_info RENAME COLUMN population TO state_population_count;
ALTER TABLE state_info RENAME COLUMN area TO state_area_size;
ALTER TABLE state_info RENAME COLUMN language TO state_official_language;
ALTER TABLE state_info MODIFY COLUMN state_id BIGINT;
ALTER TABLE state_info MODIFY COLUMN state_population_count BIGINT;
ALTER TABLE state_info MODIFY COLUMN state_area_size BIGINT;
ALTER TABLE state_info MODIFY COLUMN literacy_rate BIGINT;
ALTER TABLE state_info MODIFY COLUMN density BIGINT;
INSERT INTO state_info (state_id, state_full_name, state_capital_city, state_population_count, state_area_size, state_official_language, literacy_rate, density, founded_year)
VALUES
(1, 'Andhra Pradesh', 'Amaravati', 1000000, 1000, 'Telugu', 90, 100, 1953),
(2, 'Arunachal Pradesh', 'Itanagar', 2000000, 2000, 'Hindi', 85, 120, 1987),
(3, 'Assam', 'Dispur', 3000000, 3000, 'Assamese', 95, 150, 1950),
(4, 'Bihar', 'Patna', 4000000, 4000, 'Hindi', 80, 180, 1950),
(5, 'Chhattisgarh', 'Raipur', 5000000, 5000, 'Hindi', 92, 200, 2000),
(6, 'Goa', 'Panaji', 6000000, 6000, 'Konkani', 88, 220, 1987),
(7, 'Gujarat', 'Gandhinagar', 7000000, 7000, 'Gujarati', 96, 250, 1960),
(8, 'Haryana', 'Chandigarh', 8000000, 8000, 'Hindi', 82, 280, 1966),
(9, 'Himachal Pradesh', 'Shimla', 9000000, 9000, 'Hindi', 91, 300, 1971),
(10, 'Jharkhand', 'Ranchi', 10000000, 10000, 'Hindi', 89, 320, 2000),
(11, 'Karnataka', 'Bengaluru', 11000000, 11000, 'Kannada', 94, 350, 1956),
(12, 'Kerala', 'Thiruvananthapuram', 12000000, 12000, 'Malayalam', 86, 380, 1956),
(13, 'Madhya Pradesh', 'Bhopal', 13000000, 13000, 'Hindi', 93, 400, 1950),
(14, 'Maharashtra', 'Mumbai', 14000000, 14000, 'Marathi', 87, 420, 1960),
(15, 'Manipur', 'Imphal', 15000000, 15000, 'Meitei', 90, 450, 1972),
(16, 'Meghalaya', 'Shillong', 16000000, 16000, 'Khasi', 92, 480, 1972),
(17, 'Mizoram', 'Aizawl', 17000000, 17000, 'Mizo', 89, 500, 1987),
(18, 'Nagaland', 'Kohima', 18000000, 18000, 'Naga', 95, 520, 1963),
(19, 'Odisha', 'Bhubaneswar', 19000000, 19000, 'Odia', 83, 550, 1950),
(20, 'Punjab', 'Chandigarh', 20000000, 20000, 'Punjabi', 91, 580, 1947);
UPDATE state_info SET state_full_name = 'Andhra Pradesh' WHERE state_id = 1;
UPDATE state_info SET state_capital_city = 'Amaravati' WHERE state_id = 2;
UPDATE state_info SET state_population_count = 11000000 WHERE state_id = 11;
UPDATE state_info SET state_area_size = 11000 WHERE state_id = 15;
UPDATE state_info SET state_official_language = 'Telugu' WHERE state_id = 5;
UPDATE state_info SET literacy_rate = 92 WHERE state_id = 6;
UPDATE state_info SET density = 120 WHERE state_id = 7;
UPDATE state_info SET founded_year = 1966 WHERE state_id = 8;
UPDATE state_info SET state_code = 'AP01' WHERE state_id = 20;
UPDATE state_info SET state_governor = 'Radhakrishnan' WHERE state_id = 10;
DESC state_info;
SELECT *FROM state_info;
DELETE FROM state_info WHERE state_id = 1;
DELETE FROM state_info WHERE state_id = 2;
DELETE FROM state_info WHERE state_id = 3;
SELECT * FROM state_info WHERE state_population_count > 1000000 AND literacy_rate > 90;
SELECT * FROM state_info WHERE state_population_count > 1000000 OR literacy_rate > 90;
SELECT * FROM state_info WHERE state_full_name IN ('Andhra Pradesh', 'Maharashtra', 'Karnataka');
SELECT * FROM state_info WHERE state_full_name NOT IN ('Andhra Pradesh', 'Maharashtra', 'Karnataka');



CREATE TABLE scam_info (
  scam_id INT,
  scam_name VARCHAR(255),
  scam_type VARCHAR(255),
  scam_amount INT,
  scam_location VARCHAR(255),
  scam_description TEXT,
  scam_reported_by VARCHAR(255),
  scam_status VARCHAR(255),
  scam_resolution_year INT
);
ALTER TABLE scam_info ADD COLUMN scam_reported_year INT;
ALTER TABLE scam_info ADD COLUMN scam_updated_year INT;
ALTER TABLE scam_info ADD COLUMN scam_closed_year INT;
ALTER TABLE scam_info ADD COLUMN scam_assigned_to VARCHAR(255);
ALTER TABLE scam_info ADD COLUMN scam_priority INT;
ALTER TABLE scam_info RENAME COLUMN scam_name TO scam_full_name;
ALTER TABLE scam_info RENAME COLUMN scam_type TO scam_category;
ALTER TABLE scam_info RENAME COLUMN scam_amount TO scam_total_amount;
ALTER TABLE scam_info RENAME COLUMN scam_location TO scam_city;
ALTER TABLE scam_info RENAME COLUMN scam_status TO scam_current_status;
ALTER TABLE scam_info MODIFY COLUMN scam_id BIGINT;
ALTER TABLE scam_info MODIFY COLUMN scam_total_amount BIGINT;
ALTER TABLE scam_info MODIFY COLUMN scam_priority INT;
ALTER TABLE scam_info MODIFY COLUMN scam_assigned_to VARCHAR(100);
ALTER TABLE scam_info MODIFY COLUMN scam_current_status VARCHAR(100);
INSERT INTO scam_info (scam_id, scam_full_name, scam_category, scam_total_amount, scam_city, scam_description, scam_reported_by, scam_current_status)
VALUES
(1, 'Fake Investment Scam', 'Financial Scam',1000, 'Mumbai', 'Scammers promised high returns on investment', 'Rahul Kumar','open'),
(2, 'Online Shopping Scam', 'E-commerce Scam',5000, 'Delhi', 'Scammers sold fake products online', 'Priya Sharma','inprogress'),
(3, 'Loan Scam', 'Financial Scam',20000, 'Bangalore', 'Scammers promised loans at low interest rates', 'Rajesh Singh','closed'),
(4, 'Real Estate Scam', 'Property Scam', 2000,'Chennai', 'Scammers sold fake properties', 'Suresh Kumar','open'),
(5, 'Job Scam', 'Employment Scam',5000, 'Hyderabad', 'Scammers promised fake jobs', 'Neha Gupta','inprogress'),
(6,'Social Scam','Social Scam',40000,'karnataka','Scammers hacked social media account','sreyas','open'),
(7, 'Lottery Scam', 'Gambling Scam',10000, 'Pune', 'Scammers promised lottery winnings', 'Ramesh Patel','open'),
(8, 'Tech Support Scam', 'Technical Scam',3000, 'Ahmedabad', 'Scammers promised fake tech support', 'Vijay Sharma','closed'),
(9, 'Charity Scam', 'Social Scam',50000, 'Surat', 'Scammers promised fake charity donations', 'Ragini Singh','inprogress'),
(10, 'Insurance Scam', 'Financial Scam', 30000,'Jaipur', 'Scammers promised fake insurance policies', 'Manish Jain','open'),
(11, 'Pyramid Scheme', 'Financial Scam',25000, 'Lucknow', 'Scammers promised high returns on investment', 'Amit Kumar','open'),
(12, 'Phishing Scam', 'Technical Scam',4000, 'Nagpur', 'Scammers stole personal info', 'Sneha Sharma','closed'),
(13, 'Advance Fee Scam', 'Financial Scam', 15000,'Visakhapatnam', 'Scammers promised loans at low interest rates', 'Rajeshwar Rao','open'),
(14, 'Home Repair Scam', 'Property Scam',5000, 'Thiruvananthapuram', 'Scammers promised fake home repairs', 'Sreenivasan','inprogess'),
(15, 'Travel Scam', 'Travel Scam',7000, 'Bhopal', 'Scammers promised fake travel packages', 'Rohit Tiwari','closed'),
(16, 'Social Media Scam', 'Social Scam', 6000,'Indore', 'Scammers promised fake social media followers', 'Arun Singh','open'),
(17, 'Credit Card Scam', 'Financial Scam',20000, 'Coimbatore', 'Scammers stole credit card info', 'Saranya Devi','inprogess'),
(18, 'Government Grant Scam', 'Financial Scam',2000, 'Vadodara', 'Scammers promised fake government grants', 'Rahul Patel','inprogess'),
(19, 'Healthcare Scam', 'Health Scam',25000, 'Mysore', 'Scammers promised fake healthcare services', 'Pooja Rao','closed'),
(20, 'Education Scam', 'Education Scam',6000, 'Patna', 'Scammers promised fake educational services', 'Sumeet Kumar','open');
UPDATE scam_info SET scam_full_name = 'Fake Investment Scam' WHERE scam_id = 1;
UPDATE scam_info SET scam_category = 'Social Scam' WHERE scam_id = 6;
UPDATE scam_info SET scam_total_amount = 30000 WHERE scam_id = 3;
UPDATE scam_info SET scam_city = 'Bhopal' WHERE scam_id = 15;
UPDATE scam_info SET scam_description = 'Scammers promised fake jobs' WHERE scam_id = 5;
UPDATE scam_info SET scam_reported_by = 'Amit Kumar' WHERE scam_id =11 ;
UPDATE scam_info SET scam_current_status = 'inprogess' WHERE scam_id = 7;
UPDATE scam_info SET scam_city='karnataka'WHERE scam_id = 8;
UPDATE scam_info SET scam_full_name='Loan Scam' WHERE scam_id = 3;
UPDATE scam_info SET scam_priority = 2 WHERE scam_id = 20;
DELETE FROM scam_info WHERE scam_id = 6;
DELETE FROM scam_info WHERE scam_id = 13;
DELETE FROM scam_info WHERE scam_id = 17;
DESC scam_info;
SELECT *FROM scam_info;
SELECT * FROM scam_info WHERE scam_total_amount > 1000 AND scam_current_status = 'Open';
SELECT * FROM scam_info WHERE scam_total_amount > 1000 OR scam_current_status = 'In Progress';
SELECT * FROM scam_info WHERE scam_category IN ('Category 1', 'Category 2', 'Category 3');
SELECT * FROM scam_info WHERE scam_category NOT IN ('Category 1', 'Category 2', 'Category 3');




