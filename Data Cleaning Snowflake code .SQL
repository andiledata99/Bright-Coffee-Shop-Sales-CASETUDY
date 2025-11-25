---Checking for all column names and data types in the dataset
SELECT
  *
FROM
  "CASESTUDY"."BRIGHT"."COFFEE_SHOP"
LIMIT
  10;
----------------------------------------------------------------------
---Checking for catergorical columns.
SELECT DISTINCT store_location
FROM "CASESTUDY"."BRIGHT"."COFFEE_SHOP";

---Checking the date range.
SELECT MIN(transaction_date) AS first_operating_date
FROM "CASESTUDY"."BRIGHT"."COFFEE_SHOP";

SELECT MAX(transaction_date) AS last_operating_date
FROM "CASESTUDY"."BRIGHT"."COFFEE_SHOP";

---Checking for the transaction time(opening and closing hour)
SELECT MIN(transaction_time) AS opening_hour
FROM "CASESTUDY"."BRIGHT"."COFFEE_SHOP";

SELECT MAX(transaction_time) AS closing_hour
FROM "CASESTUDY"."BRIGHT"."COFFEE_SHOP";



-----------------------------------------------------------------------

SELECT transaction_date,
     DAYNAME(transaction_date) AS day_name,
     CASE
         WHEN day_name IN ('Sun','Sat') THEN 'Weekend'
        ELSE 'Weekday'
        END AS day_classification,
     MONTHNAME(transaction_date) AS month_name,
     
---transaction_time,
     CASE
         WHEN transaction_time BETWEEN '06:00:00'AND '11:59:59' THEN 'Morning'
         WHEN transaction_time BETWEEN '12:00:00'AND '16:59:59' THEN 'Afternoon'
         WHEN transaction_time >= '17:00:00'THEN 'Evening'
         END AS time_classification,
         
     HOUR(transaction_time) AS hour_of_day,
 
---Catergorical data.
     store_location,
     product_category,
     product_detail,
     product_type,

---IDs
COUNT (DISTINCT transaction_id) AS number_of_sales,

---Revenue calculation.
SUM(transaction_qty*unit_price) AS Revenue
FROM "CASESTUDY"."BRIGHT"."COFFEE_SHOP"
GROUP BY ALL;
