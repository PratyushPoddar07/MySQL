-- CONDITIONAL ---

SELECT * FROM dim_product;

-- 1 [MAKE THE CATEGORIES WHERE PRICE LESS THAN 100 "AFORDABLE", IF BETWEEN 100-200 "NORMAL", MORE THAN 200 "EXPENSIVE"]
SELECT
	*,
    CASE
	WHEN unit_price <= 100 THEN "AFORDABLE"
    WHEN unit_price <=200 THEN "NORMAL"
    ELSE 'expensive (but not for you!)'
    END AS price_category
FROM
	dim_product;
    
-- 2 [IMPLEMENT 1 ONLY FOR CLOTHING CATEGORY]

SELECT
	*,
    CASE
	WHEN unit_price <= 100 AND category = 'CLOTHING' THEN "AFORDABLE"
    WHEN unit_price <=200 AND category = 'CLOTHING' THEN "NORMAL"
    WHEN unit_price >200 AND category ='CLOTHING' THEN 'expensive (but not for you!)'
    ELSE concat('NOT FOR ', category)
    END AS price_category
FROM
	dim_product;
    