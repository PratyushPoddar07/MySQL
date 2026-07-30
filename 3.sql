-- FIRST SELECT
SELECT * FROM dim_customer;

-- customer id and email
SELECT
	customer_id,
	email 
FROM 
	dim_customer
LIMIT 5;

-- WHERE -> condition  => pronuing [filter out the data]
-- 1
SELECT
	*
FROM
	dim_customer
WHERE
	(gender = "F") ;

-- 2

SELECT
	*
FROM
	dim_customer
WHERE
	(gender = "F") AND (country = "France") AND (join_date > '2022-01-01') ;
    
-- 3
SELECT
	*
FROM
	dim_customer
WHERE
	(gender = "F") AND ((country = "France") OR (join_date > '2022-01-01')) ;
    

-- LIKE
-- i want all the customer whose 1st name starting with S

-- 1

SELECT
	*
FROM
	dim_customer
where
	first_name LIKE 'S%';
    
-- 2 [FIRSTNAME S AND LASTNAME T]
SELECT
	*
FROM
	dim_customer
WHERE
	(first_name LIKE 'S%') AND (last_name LIKE 'T%');
    
-- 3 [STARTING WITH T ENDING WITH Y]

SELECT
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'T%y';
    
-- 4 [starting with T after 2 letter it should be F and end with Y]
SELECT
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'T__f%y';
    
-- Sorting

SELECT * FROM dim_product;

SELECT
	*
FROM
	dim_product
ORDER BY
	unit_price DESC
LIMIT 10;

-- ALIAS
SELECT
	product_key,
    product_id ,
    product_name as pn
FROM
	dim_product;
    
-- GROUPING
-- AVG PRICE PER CATEGORY

SELECT * FROM dim_product;

-- 1
SELECT
	category,
    avg(unit_price) as avg_price,
    sum(unit_price) as total_price,
    count(unit_price) as no_of_item
FROM
	dim_product
GROUP BY
	category;
    
-- 2
-- fetch those recored whose avg price is greater than 500
-- we can use where clause only with the avialble given column to solve this we use HAVING
SELECT
	category,
    avg(unit_price) as avg_price
FROM
	dim_product
GROUP BY 
	category
HAVING
	avg_price > 500;
    

-- EXECUTION FLOW [MOST IMP]
SELECT -- step 5
	category,
    avg(unit_price) as avg_price
FROM -- step 1
	dim_product
WHERE -- step 2
	country ='France'
GROUP BY -- step 3
	category
HAVING -- step 4
	avg_price > 500;
-- order by -- step 6
-- limit -- step 7

    