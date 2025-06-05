# Write your MySQL query statement below
SELECT P.product_id,
IfNULL(ROUND(SUM(units*price)/SUM(units),2),0) as average_price
FROM prices P LEFT JOIN UnitsSold U ON
P.product_id=U.product_id AND
U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY product_id;