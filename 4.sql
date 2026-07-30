-- for join ----
CREATE TABLE orders
(
	o_id INT,
    cust_id INT,
    price int
);

INSERT INTO orders
VALUES 
	(1,101,1000),
    (2,102,1100),
    (3,501,2000)
;

CREATE TABLE customers
(
	id INT,
    name VARCHAR(200),
    email VARCHAR(100)
);

INSERT INTO customers
VALUES
	(101,'Love','aa'),
    (102,'kush','bb'),
    (301,'ansh','cc');
    

-- INNER JOIN --
SELECT
	*
FROM
	orders as o
INNER JOIN
	customers as c 
    ON
		o.cust_id = c.id;
        
-- LEFT JOIN --

SELECT
	*
FROM
	orders as o -- under from become LEFT TABLE
LEFT JOIN
	customers as c -- UNDER join become RIGHT TABLE
	ON
		o.cust_id= c.id;
        
-- RIGHT JOIN --
SELECT
	*
FROM
	orders as o
Right JOIN 
	customers as c 
    ON
		o.cust_id = c.id;
        
-- FULL JOIN [In MySQL not SUPPORTED] --
-- if u do not define join and simply write JOIN then it act as INNER JOIN
-- in mysql full join/ full outer join not supported. full join and outer join is same things.
SELECT
	*
FROM
	orders as o
FULL OUTER JOIN
	customers as c
    ON
		o.cust_id =c.id;

-- UNION --

-- LEFT JOIN --

SELECT
	*
FROM
	orders as o -- under from become LEFT TABLE
LEFT JOIN
	customers as c -- UNDER join become RIGHT TABLE
	ON
		o.cust_id= c.id
	
UNION -- IT WILL ACT AS FULL JOIN
-- RIGHT JOIN --
SELECT
	*
FROM
	orders as o
Right JOIN 
	customers as c 
    ON
		o.cust_id = c.id;
        