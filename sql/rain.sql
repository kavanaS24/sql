CREATE DATABASE rain;
USE rain;
CREATE TABLE movie_info (id VARCHAR(100),name VARCHAR(100),release_date VARCHAR(100),genre VARCHAR(100),rating INT,duration INT,budget BIGINT,revenue BIGINT,is_classic BOOLEAN);

ALTER TABLE movie_info ADD COLUMN director VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN writer VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN producer VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN production_company VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN awards VARCHAR(100);
ALTER TABLE movie_info RENAME COLUMN id TO movie_id;
ALTER TABLE movie_info RENAME COLUMN name TO movie_name;
ALTER TABLE movie_info RENAME COLUMN release_date TO release_year;
ALTER TABLE movie_info RENAME COLUMN genre TO movie_genre;
ALTER TABLE movie_info RENAME COLUMN rating TO movie_rating;
INSERT INTO movie_info (movie_id, movie_name, release_year, movie_genre, movie_rating, director, writer, producer, production_company, awards)
VALUES
('1', 'The Shawshank Redemption', '1994', 'Drama', 9, 'Frank Darabont', 'Stephen King', 'Niki Marvin', 'Columbia Pictures', 'Academy Award for Best Picture'),
('2', 'The Godfather', '1972', 'Crime', 8, 'Francis Ford Coppola', 'Mario Puzo', 'Albert S. Ruddy', 'Paramount Pictures', 'Academy Award for Best Picture'),
('3', 'The Dark Knight', '2008', 'Action', 8.5, 'Christopher Nolan', 'Jonathan Nolan', 'Charles Roven', 'Warner Bros. Pictures', 'Academy Award for Best Picture'),
('4', '12 Angry Men', '1957', 'Drama', 8, 'Sidney Lumet', 'Reginald Rose', 'Henry Fonda', 'United Artists', 'Academy Award for Best Picture'),
('5', 'Schindler''s List', '1993', 'Historical Drama', 7, 'Steven Spielberg', 'Steven Zaillian', 'Gerald R. Molen', 'Universal Pictures', 'Academy Award for Best Picture'),
('6', 'The Lord of the Rings: The Return of the King', '2003', 'Fantasy', 9, 'Peter Jackson', 'Fran Walsh', 'Barrie M. Osborne', 'New Line Cinema', 'Academy Award for Best Picture'),
('7', 'Pulp Fiction', '1994', 'Crime', 7.5, 'Quentin Tarantino', 'Quentin Tarantino', 'Lawrence Bender', 'Miramax Films', 'Academy Award for Best Picture'),
('8', 'The Good, the Bad and the Ugly', '1966', 'Western', 8.5, 'Sergio Leone', 'Sergio Leone', 'Alberto Grimaldi', 'United Artists', 'Academy Award for Best Picture'),
('9', 'Forrest Gump', '1994', 'Drama', 7, 'Robert Zemeckis', 'Eric Roth', 'Wendy Finerman', 'Paramount Pictures', 'Academy Award for Best Picture'),
('10', 'Star Wars: Episode IV - A New Hope', '1977', 'Science Fiction', 7.5, 'George Lucas', 'George Lucas', 'Gary Kurtz', '20th Century Fox', 'Academy Award for Best Picture');

UPDATE movie_info SET movie_rating = 10 WHERE movie_id = '1';
UPDATE movie_info SET director = 'Steven Spielberg' WHERE movie_id = '5';
UPDATE movie_info SET production_company = 'Warner Bros. Pictures' WHERE movie_id = '3';
UPDATE movie_info SET awards = 'Academy Award for Best Director' WHERE movie_id = '2';
UPDATE movie_info SET release_year = '1995' WHERE movie_id = '4';
UPDATE movie_info SET movie_genre = 'Science Fiction' WHERE movie_id = '10';
UPDATE movie_info SET writer = 'George Lucas' WHERE movie_id = '10';
UPDATE movie_info SET producer = 'Gary Kurtz' WHERE movie_id = '10';
UPDATE movie_info SET is_classic = TRUE WHERE movie_id = '6';
UPDATE movie_info SET duration = 180 WHERE movie_id = '8';
DELETE FROM movie_info WHERE movie_id = '1';
DELETE FROM movie_info WHERE movie_id = '3';
DELETE FROM movie_info WHERE movie_id = '6';
SELECT * FROM movie_info WHERE movie_rating = 8;
SELECT * FROM movie_info WHERE director = 'Steven Spielberg' AND movie_genre = 'Historical Drama';
SELECT * FROM movie_info WHERE director = 'Steven ' OR movie_id=6;
SELECT * FROM movie_info WHERE movie_id IN ('2', '4', '5');
SELECT * FROM movie_info WHERE awards NOT IN ('Academy Award for Best Picture', 'Academy Award for Best Director');
DESC movie_info;
SELECT*FROM movie_info;

CREATE TABLE bank_info (id VARCHAR(100),name VARCHAR(100),account_number VARCHAR(100),account_type VARCHAR(100),balance INT,interest_rate INT,account_opened_date BIGINT,last_transaction_date BIGINT,is_active BOOLEAN);
ALTER TABLE bank_info ADD COLUMN branch_name VARCHAR(100);
ALTER TABLE bank_info ADD COLUMN branch_address VARCHAR(100);
ALTER TABLE bank_info ADD COLUMN branch_city VARCHAR(100);
ALTER TABLE bank_info ADD COLUMN branch_state VARCHAR(100);
ALTER TABLE bank_info ADD COLUMN branch_zipcode VARCHAR(100);
ALTER TABLE bank_info RENAME COLUMN id TO account_id;
ALTER TABLE bank_info RENAME COLUMN name TO account_name;
ALTER TABLE bank_info RENAME COLUMN account_number TO account_num;
ALTER TABLE bank_info RENAME COLUMN account_type TO account_type_desc;
ALTER TABLE bank_info RENAME COLUMN balance TO current_balance;
INSERT INTO bank_info (account_id, account_name, account_num, account_type_desc, current_balance, interest_rate, account_opened_date, last_transaction_date, is_active, branch_name, branch_address, branch_city, branch_state, branch_zipcode)
VALUES
('1', 'John Doe', '123456789', 'Savings', 1000, 2.5, 1643723400, 1643723400, TRUE, 'Main Branch', '123 Main St', 'Anytown', 'CA', '12345'),
('2', 'Jane Smith', '987654321', 'Checking', 500, 1.5, 1643723400, 1643723400, TRUE, 'Downtown Branch', '456 Elm St', 'Othertown', 'NY', '67890'),
('3', 'Bob Johnson', '111111111', 'Money Market', 2000, 3.5, 1643723400, 1643723400, TRUE, 'Uptown Branch', '789 Oak St', 'Thistown', 'TX', '34567'),
('4', 'Alice Williams', '222222222', 'CD', 3000, 4.5, 1643723400, 1643723400, TRUE, 'Suburban Branch', '901 Maple St', 'That town', 'IL', '56789'),
('5', 'Mike Davis', '333333333', 'Savings', 1500, 2.5, 1643723400, 1643723400, TRUE, 'Main Branch', '123 Main St', 'Anytown', 'CA', '12345'),
('6', 'Emily Chen', '444444444', 'Checking', 750, 1.5, 1643723400, 1643723400, TRUE, 'Downtown Branch', '456 Elm St', 'Othertown', 'NY', '67890'),
('7', 'Tom Harris', '555555555', 'Money Market', 2500, 3.5, 1643723400, 1643723400, TRUE, 'Uptown Branch', '789 Oak St', 'Thistown', 'TX', '34567'),
('8', 'Lisa Nguyen', '666666666', 'CD', 3500, 4.5, 1643723400, 1643723400, TRUE, 'Suburban Branch', '901 Maple St', 'That town', 'IL', '56789'),
('9', 'Kevin White', '777777777', 'Savings', 1000, 2.5, 1643723400, 1643723400, TRUE, 'Main Branch', '123 Main St', 'Anytown', 'CA', '12345'),
('10', 'Sarah Lee', '888888888', 'Checking', 500, 1.5, 1643723400, 1643723400, TRUE, 'Downtown Branch', '456 Elm St', 'Othertown', 'NY', '67890');
UPDATE bank_info SET current_balance = 1200 WHERE account_id = '1';
UPDATE bank_info SET interest_rate = 3.0 WHERE account_id = '3';
UPDATE bank_info SET account_type_desc = 'Money Market' WHERE account_id = '5';
UPDATE bank_info SET branch_name = 'Uptown Branch' WHERE account_id = '2';
UPDATE bank_info SET is_active = FALSE WHERE account_id = '4';
UPDATE bank_info SET account_num = '999999999' WHERE account_id = '6';
UPDATE bank_info SET last_transaction_date = 1643723400 WHERE account_id = '7';
UPDATE bank_info SET account_opened_date = 1643723400 WHERE account_id = '8';
UPDATE bank_info SET branch_address = '123 Main St' WHERE account_id = '9';
UPDATE bank_info SET branch_city = 'Anytown' WHERE account_id = '10';
DELETE FROM bank_info WHERE account_id = '1';
DELETE FROM bank_info WHERE account_id = '3';
DELETE FROM bank_info WHERE account_id = '6';
SELECT * FROM bank_info WHERE current_balance = 1000;
SELECT * FROM bank_info WHERE account_type_desc = 'Savings' AND branch_name = 'Main Branch';
SELECT * FROM bank_info WHERE account_id IN ('2', '5', '8');
SELECT * FROM bank_info WHERE branch_state = 'CA' OR branch_state = 'NY';
SELECT * FROM bank_info WHERE account_id NOT IN ('1', '3', '6');
SELECT * FROM bank_info;












