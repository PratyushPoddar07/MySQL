-- SUBQUERIES --

-- SELECT AVG(UNIT_PRICE) FROM dim_product; -- 495.79
SELECT 
	*
FROM
	dim_product
WHERE
	unit_price > (SELECT AVG(UNIT_PRICE) FROM dim_product);

-- 2 [SUBQUERIES FROM CLAUSE]
SELECT 
	*
FROM
	(
		SELECT 
			*
		FROM
			dim_product
		WHERE
			unit_price > (SELECT AVG(UNIT_PRICE) FROM dim_product)
    ) 	AS SUBQUERY
WHERE
	product_name = "FIGURE METHOD";
    
    
