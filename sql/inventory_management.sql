SELECT TOP 10
    p.productId,
    ps.totalSold,
    i.totalInventory,
    COALESCE(i.totalInventory / NULLIF(ps.totalSold, 0), 9999) AS inventoryRatio
FROM Product p

JOIN (
    SELECT 
        productId,
        SUM(quantity) AS totalInventory
    FROM ProductInventory
    GROUP BY productId
) AS i 
    ON p.productId = i.productId

JOIN (
    SELECT 
        op.productId,
        NULLIF(SUM(op.quantity), 0) AS totalSold
    FROM OrderProduct op
    JOIN OrderSummary os 
        ON os.orderId = op.orderId
    WHERE YEAR(os.orderDate) > 2019
    GROUP BY op.productId
) AS ps 
    ON p.productId = ps.productId

GROUP BY 
    p.productId,
    i.totalInventory,
    ps.totalSold

ORDER BY inventoryRatio DESC;