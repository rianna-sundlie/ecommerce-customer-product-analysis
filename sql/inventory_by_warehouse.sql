SELECT 
    w.warehouseId,
    w.warehouseName,
    i.totalInventory
FROM Warehouse w
JOIN (
        SELECT 
            warehouseId, 
            SUM(pi.quantity) AS totalInventory
        FROM ProductInventory pi
        GROUP BY warehouseId
     ) AS i 
    ON w.warehouseId = i.warehouseId;