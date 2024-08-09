CREATE DATABASE 2aug;
USE 2aug;
CREATE TABLE Bus_info(id int,Name varchar(50),Bus_color varchar(50),
Bus_no int,source varchar(50),destination varchar(50));
INSERT INTO Bus_info (id, Name, Bus_color, Bus_no, Source, Destination)
VALUES
  (1, 'Tata', 'Red', 201, 'Mumbai', 'Pune'),
  (2, 'Ashok Leyland', 'Blue', 543, 'Delhi', 'Chandigarh'),
  (3, 'KSRTC', 'Red', 9056, 'Bangalore', 'Hyderabad'),
  (4, 'Rajahamsa', 'white', 6753, 'Chennai', 'Trichy'),
  (5, 'Ashwameda', 'Red', 7754, 'Hassan', 'Banglore'),
  (6, 'Airavatha', 'White', 8547, 'Baglore', 'Mumbai'),
  (7, 'Tata', 'Red', 6789, 'Delhi', 'Agra'),
  (8, 'KSRTC', 'Blue', 4567, 'Bangalore', 'Mysore'),
  (9, 'Tata', 'White', 8901, 'Chennai', 'Coimbatore'),
  (10, 'BMTC', 'green', 176, 'Majestic', 'Yashwanthpur'),
  (11, 'Tata', 'Blue', 5678, 'Mumbai', 'Thane'),
  (12, 'Ashok Leyland', 'White', 9012, 'Delhi', 'Gurgaon'),
  (13, 'Ashwameda', 'Red', 3456, 'Bangalore', 'Tumkur'),
  (14, 'Ashok Leyland', 'Blue', 7890, 'Chennai', 'Salem'),
  (15, 'Tata', 'White', 2345, 'Kolkata', 'Asansol'),
  (16, 'Rajahamsa', 'Red', 6789, 'Mumbai', 'Pune'),
  (17, 'Tata', 'Blue', 4567, 'Delhi', 'Noida'),
  (18, 'Ashok Leyland', 'White', 8901, 'Bangalore', 'Kolar'),
  (19, 'Tata', 'Red', 1234, 'Chennai', 'Erode'),
  (20, 'Ashok Leyland', 'Blue', 5678, 'Kolkata', 'Siliguri');
  
  
  CREATE TABLE college_info (CollegeID INT,CollegeName VARCHAR(255),Location VARCHAR(255),EstablishedYear INT,
  Type VARCHAR(255),CoursesOffered VARCHAR(255));
  INSERT INTO college_info (CollegeID, CollegeName, Location, EstablishedYear, Type, CoursesOffered)
VALUES
  (1, 'Indian Institute of Technology, Bombay', 'Mumbai', 1958, 'Public', 'Engineering, Computer Science'),
  (2, 'Indian Institute of Technology, Delhi', 'New Delhi', 1961, 'Public', 'Engineering, Computer Science'),
  (3, 'Indian Institute of Science', 'Bengaluru', 1909, 'Public', 'Science, Engineering'),
  (4, 'Indian Institute of Technology, Madras', 'Chennai', 1959, 'Public', 'Engineering, Computer Science'),
  (5, 'University of Delhi', 'New Delhi', 1922, 'Public', 'Arts, Commerce, Science'),
  (6, 'University of Mumbai', 'Mumbai', 1857, 'Public', 'Arts, Commerce, Science'),
  (7, 'Indian Institute of Technology, Kanpur', 'Kanpur', 1959, 'Public', 'Engineering, Computer Science'),
  (8, 'Indian Institute of Technology, Kharagpur', 'Kharagpur', 1951, 'Public', 'Engineering, Computer Science'),
  (9, 'University of Calcutta', 'Kolkata', 1857, 'Public', 'Arts, Commerce, Science'),
  (10, 'Jawaharlal Nehru University', 'New Delhi', 1969, 'Public', 'Arts, Commerce, Science'),
  (11, 'University of Hyderabad', 'Hyderabad', 1974, 'Public', 'Arts, Commerce, Science'),
  (12, 'Indian Institute of Technology, Roorkee', 'Roorkee', 1847, 'Public', 'Engineering, Computer Science'),
(13, 'Indian Institute of Technology, Guwahati', 'Guwahati', 1994, 'Public', 'Engineering, Computer Science'),
  (14, 'University of Pune', 'Pune', 1948, 'Public', 'Arts, Commerce, Science'),
  (15, 'Indian Institute of Technology, Varanasi', 'Varanasi', 2011, 'Public', 'Engineering, Computer Science'),
  (16, 'University of Kerala', 'Thiruvananthapuram', 1937, 'Public', 'Arts, Commerce, Science'),
  (17, 'Indian Institute of Technology, Gandhinagar', 'Gandhinagar', 2008, 'Public', 'Engineering, Computer Science'),
  (18, 'University of Mysore', 'Mysuru', 1916, 'Public', 'Arts, Commerce, Science'),
  (19, 'Indian Institute of Technology, Hyderabad', 'Hyderabad', 2008, 'Public', 'Engineering, Computer Science'),
  (20, 'University of Allahabad', 'Allahabad', 1887, 'Public', 'Arts, Commerce, Science');

  
