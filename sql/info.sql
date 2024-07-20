CREATE DATABASE info;
USE info;
CREATE TABLE hospital_info (hospital_id INT ,hospital_name VARCHAR(100),address VARCHAR(255),city VARCHAR(100),state VARCHAR(100),country VARCHAR(100),contact_number VARCHAR(20),beds_available INT,rating FLOAT,established_year INT);
INSERT INTO hospital_info (hospital_id, hospital_name, address, city, state, country, contact_number, beds_available, rating, established_year)
VALUES
    (1, 'City Hospital', '123 Main Street', 'Metropolis', 'Metropolis State', 'Metropolis Country', '+1234567890', 150, 4.5, 1990),
    (2, 'General Hospital', '456 Elm Street', 'Smalltown', 'Smalltown State', 'Smalltown Country', '+1987654321', 100, 3.8, 1985),
    (3, 'Regional Medical Center', '789 Pine Street', 'Townsville', 'Town State', 'Town Country', '+1122334455', 200, 4.2, 2005),
    (4, 'University Hospital', '321 Oak Avenue', 'Cityville', 'City State', 'City Country', '+1555666777', 300, 4.7, 1975),
    (5, 'Community Clinic', '876 Maple Drive', 'Villagetown', 'Village State', 'Village Country', '+1444333222', 50, 3.5, 2010),
    (6, 'Saint Mary Hospital', '234 Cedar Lane', 'Hamlet', 'Hamlet State', 'Hamlet Country', '+1666777888', 120, 4.0, 1998),
    (7, 'Children Hospital', '567 Willow Road', 'Ruraltown', 'Rural State', 'Rural Country', '+1999888777', 80, 3.9, 2008),
    (8, 'Veterans Medical Center', '890 Birch Boulevard', 'Suburbia', 'Suburb State', 'Suburb Country', '+1777888999', 250, 4.3, 1980),
    (9, 'City Emergency Clinic', '432 Elm Court', 'Metroville', 'Metro State', 'Metro Country', '+1888999000', 70, 3.7, 2015),
    (10, 'General Surgery Institute', '765 Pine Lane', 'Townburg', 'Town State', 'Town Country', '+1666555444', 180, 4.6, 1995),
    (11, 'Municipal Hospital', '109 Maple Street', 'Ruralville', 'Rural State', 'Rural Country', '+1222333444', 110, 4.1, 2003),
    (12, 'Women Health Center', '543 Cedar Avenue', 'Villageburg', 'Village State', 'Village Country', '+1999111222', 90, 4.4, 2002),
    (13, 'Pediatric Care Clinic', '876 Oak Drive', 'Hamletville', 'Hamlet State', 'Hamlet Country', '+1888777666', 60, 3.8, 2012),
    (14, 'Community Hospital', '210 Elm Lane', 'Suburbtown', 'Suburb State', 'Suburb Country', '+1444555666', 200, 4.5, 1988),
    (15, 'University Medical Center', '654 Birch Road', 'Citytown', 'City State', 'City Country', '+1666999888', 350, 4.8, 1970),
    (16, 'Elder Care Facility', '987 Maple Boulevard', 'Townsville', 'Town State', 'Town Country', '+1999444333', 100, 3.6, 2018),
    (17, 'Community Health Clinic', '321 Pine Court', 'Ruralville', 'Rural State', 'Rural Country', '+1222111999', 80, 3.9, 2006),
    (18, 'Metropolitan Hospital', '543 Cedar Drive', 'Metroville', 'Metro State', 'Metro Country', '+1888777000', 150, 4.2, 1993),
    (19, 'Emergency Medical Center', '876 Elm Lane', 'Villageburg', 'Village State', 'Village Country', '+1999222111', 120, 4.0, 2001),
    (20, 'Geriatric Care Institute', '109 Oak Avenue', 'Hamletville', 'Hamlet State', 'Hamlet Country', '+1444888999', 80, 3.7, 2014);
DESC hospital_info;
SELECT * FROM hospital_info;

CREATE TABLE tourist_places (place_id INT ,place_name VARCHAR(100),location VARCHAR(255),city VARCHAR(100),state VARCHAR(100),country VARCHAR(100),nearest_airport VARCHAR(100),nearby_hotels VARCHAR(255),entry_fee DECIMAL(10, 2),rating FLOAT);

INSERT INTO tourist_places (place_id, place_name, location, city, state, country, nearest_airport, nearby_hotels, entry_fee, rating)
VALUES
    (1, 'Taj Mahal', 'Dharmapuri, Forest Colony', 'Agra', 'Uttar Pradesh', 'India', 'Indira Gandhi International Airport', 'Hotel Agra, Hotel Taj', 20.00, 4.8),
    (2, 'Golden Temple', 'Golden Temple Rd', 'Amritsar', 'Punjab', 'India', 'Sri Guru Ram Dass Jee International Airport', 'Hotel Amritsar, Hotel Golden', 0.00, 4.6),
    (3, 'Varanasi Ghats', 'Varanasi', 'Varanasi', 'Uttar Pradesh', 'India', 'Lal Bahadur Shastri International Airport', 'Hotel Varanasi, Hotel Ghats', 0.00, 4.5),
    (4, 'Jaipur Pink City', 'Jaipur', 'Jaipur', 'Rajasthan', 'India', 'Jaipur International Airport', 'Hotel Jaipur, Hotel Pink', 0.00, 4.7),
    (5, 'Gateway of India', 'Apollo Bandar, Colaba', 'Mumbai', 'Maharashtra', 'India', 'Chhatrapati Shivaji Maharaj International Airport', 'Hotel Mumbai, Hotel Gateway', 0.00, 4.4),
    (6, 'Qutub Minar', 'Mehrauli', 'New Delhi', 'Delhi', 'India', 'Indira Gandhi International Airport', 'Hotel Delhi, Hotel Qutub', 10.00,4.3),
    (7, 'Eiffel Tower', 'Champ de Mars, 5 Avenue Anatole', 'Paris', 'Ile-de-France', 'France', 'Charles de Gaulle Airport', 'Hotel Paris, Hotel Eiffel', 25.00, 4.8),
    (8, 'Statue of Liberty', 'Liberty Island', 'New York City', 'New York', 'United States', 'John F. Kennedy International Airport', 'Hotel Liberty, Hotel NYC', 20.00, 4.6),
    (9, 'Great Wall of China', 'Beijing', 'Beijing', 'Beijing Municipality', 'China', 'Beijing Capital International Airport', 'Hotel Beijing, Hotel Wall', 30.00, 4.9),
    (10, 'Machu Picchu', 'Peru', 'Aguas Calientes', 'Cusco', 'Peru', 'Alejandro Velasco Astete International Airport', 'Hotel Machu Picchu, Hotel Aguas', 50.00, 4.7),
    (11, 'Colosseum', 'Piazza del Colosseo', 'Rome', 'Lazio', 'Italy', 'Leonardo da Vinci International Airport', 'Hotel Rome, Hotel Colosseum', 15.00, 4.5),
    (11, 'Mysore Palace', 'Sayyaji Rao Rd', 'Mysore', 'Karnataka', 'India', 'Kempegowda International Airport', 'Hotel Mysore, Hotel Palace', 10.00, 4.5),
    (12, 'Kerala Backwaters', 'Alappuzha', 'Alappuzha', 'Kerala', 'India', 'Cochin International Airport', 'Houseboats Alappuzha, Hotel Backwaters', 20.00, 4.7),
    (13, 'Hampi Ruins', 'Hampi', 'Hampi', 'Karnataka', 'India', 'Hubli Airport', 'Hotel Hampi, Hotel Ruins', 0.00, 4.6),
    (14, 'Goa Beaches', 'Goa', 'Goa', 'Goa', 'India', 'Goa International Airport', 'Resorts Goa, Hotels Beaches', 0.00, 4.8),
    (15, 'Ajanta and Ellora Caves', 'Aurangabad', 'Aurangabad', 'Maharashtra', 'India', 'Aurangabad Airport', 'Hotel Aurangabad, Hotel Caves', 10.00, 4.5),
    (16, 'Ranthambore National Park', 'Sawai Madhopur', 'Sawai Madhopur', 'Rajasthan', 'India', 'Jaipur International Airport', 'Resorts Sawai Madhopur, Hotels Park', 20.00, 4.7),
    (17, 'Darjeeling Tea Gardens', 'Darjeeling', 'Darjeeling', 'West Bengal', 'India', 'Bagdogra Airport', 'Hotels Darjeeling, Hotels Gardens', 0.00, 4.6),
    (18, 'Kashmir Valley', 'Srinagar', 'Srinagar', 'Jammu and Kashmir', 'India', 'Srinagar International Airport', 'Hotels Srinagar, Hotels Valley', 0.00, 4.8),
    (19, 'Himalayan Hill Stations', 'Shimla', 'Shimla', 'Himachal Pradesh', 'India', 'Shimla Airport', 'Hotels Shimla, Hotels Stations', 0.00, 4.7),
    (20, 'Mahabodhi Temple', 'Bodh Gaya', 'Gaya', 'Bihar', 'India', 'Gaya Airport', 'Hotels Bodh Gaya, Hotels Temple', 0.00, 4.6);
DESC tourist_places;
SELECT*FROM tourist_places;