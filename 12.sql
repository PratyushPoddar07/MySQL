-- VIEW --
-- view are just a varible type but it doesn't hold the table just a button for query  which store the query so that we can easily run views rather than tons of lines of query to get the table.


CREATE VIEW RNO_VIEW AS
WITH CTE_TABLE AS
(
SELECT
	*,
    row_number() OVER (partition by ID ORDER BY EMAIL) AS RNO
FROM
	CUSTOMERS
)
SELECT * FROM CTE_TABLE
WHERE RNO = 1;

SELECT * FROM RNO_VIEW;




