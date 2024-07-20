CREATE DATABASE main;
USE main;
CREATE TABLE customer( cus_name varchar(20), cus_orderdate varchar(20), cus_adress varchar(20),productname varchar(20), price int,quantity int, totalamount bigint);
CREATE TABLE books(booktitle varchar(30),authorname varchar(30),publisher varchar(30),publicationdate varchar(20),isbn int,price int,bookid bigint);
CREATE TABLE flights(flightnumber varchar(30),departurecity varchar(30),arrivalcity varchar(30),departuretime varchar(30),timings int,duration int,flightid bigint);
CREATE TABLE HotelBookings (HotelName VARCHAR(20),Location VARCHAR(50),RoomType VARCHAR(50),CheckInDate VARCHAR(50),CheckOutDate VARCHAR(50),RoomRent INT,NumberOfGuests INT,BookingID BIGINT);
CREATE TABLE  Users(Username VARCHAR(30),Email VARCHAR(50),Password VARCHAR(50),FirstName VARCHAR(50),LastName VARCHAR(50),Age INT,PhoneNumber INT,UserID BIGINT);
ALTER TABLE books ADD COLUMN book_type varchar(30);