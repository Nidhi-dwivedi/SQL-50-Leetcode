WITH RecentPrices AS (
    SELECT 
        product_id, 
        new_price, 
        RANK() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS xrank 
    FROM 
        Products
    WHERE 
        change_date <= '2019-08-16'
)

SELECT DISTINCT 
    a.product_id, 
    COALESCE(b.new_price, 10) AS price 
FROM 
    Products AS a
LEFT JOIN 
    RecentPrices AS b ON a.product_id = b.product_id AND b.xrank = 1
ORDER BY 
    price DESC;
