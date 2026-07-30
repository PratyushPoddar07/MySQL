-- create database
create database sales;

-- create table
use sales;
create table stores(
store_id int ,
store_name varchar(200)
);

-- insert some records
insert into stores values 
(1,"store_xyz"),
(2,"Store_abc");

-- for constraints
CREATE TABLE storesNew(
store_id INT UNIQUE,
store_name VARCHAR(200) NOT NULL
);

-- insert for constraints
insert into storesNew values
(1,"Storeabc");


-- Alter command
ALTER TABLE storesNew
-- ADD COLUMN store_city varchar(200) not null;
RENAME COLUMN store_city to store_location;




