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


