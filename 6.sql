-- TRANSFORMATIONS


-- Numeric transformations [we apply when we want mathmaicalfuncation --
-- we want to run a sale and give 10% discount so all unit price be in 10% discount
SELECT
	unit_price * 0.90 as discounted_price,
    unit_price + 10 as taxed_price,
    unit_price / 10 as fractioned_price,
    ROUND(unit_price,1) as rounded_price
FROM
	dim_product;
    
    
-- DATE TRANSFORMATIONS
-- function to fetch current date and time
-- 1
select
	DATE,
    NOW() as 'current_timeStamp',
    utc_date(),
    utc_time(),
    utc_timestamp()
FROM DIM_DATE;

-- 2
SELECT 
	date,
    YEAR(date),
    MONTH(date),
    day(date),
    weekday(DATE),
    dayname(DATE),
	datediff( DATE(utc_timestamp()),date) as total_days,
    adddate(date,2),
    subdate(date,2),
    cast('2025-05-01' AS DATE) AS NEW_DATE
from
	dim_date; 


-- 3
SELECT 
	date,
    date_format(date,"%W %M %e %Y") as new_formatedDate
FROM
	dim_date;
    

-- TYPE CASTING ---
-- data type should be same for joins
SELECT
	 customer_key,
     CAST(customer_key AS CHAR(1000))
FROM
	dim_customer;

	
-- STRING FUNCTIONS ---
-- 1 [concat]
SELECT
	concat(first_name," ",last_name) as full_name
FROM 
	dim_customer;
-- 2 [size of the country]
SELECT * FROM dim_customer;
SELECT
	country,
	LENGTH(country) AS COUNTRY_SIZE
FROM
	dim_customer;
    
-- 3 [make it in lower and upper case , FETCH REPLACE, AND SLICING]

SELECT
	LOWER(city) as lower_city,
    upper(CITY) AS UPPER_CITY,
    substring(EMAIL,1,4), -- FETCH IN RANGE
	replace(EMAIL,'.net','.com'), -- USED TO REPLACE 
    COUNTRY,
    left(COUNTRY,3), -- FOR SLICING FROM START
    RIGHT(COUNTRY,3) -- FOR SLICING FRO END
FROM
	dim_customer;

-- 4 [FOR REVERSE and REPEAT]
SELECT
	REPEAT(first_name,2),
	reverse(country) as ulta_country
from
	dim_customer;


-- 5 [ SUPPOSE U HAVE 5 COLUMNS AND U WANT TO COMBINE THEM AND MAKE 1 COLUMN SEPARATED BY SPACE]
SELECT
	concat_ws(' - ',first_name,last_name,country)
FROM
	dim_customer;