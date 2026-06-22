SELECT
	YEAR(os.orderDate) AS year,
	p.productId, 
	p.productName, 
	SUM(op.quantity) AS quantitySold,
	SUM(op.quantity*op.price) AS revenue
FROM (
    SELECT TOP 10
		op.productId
	FROM OrderSummary os
	JOIN OrderProduct op 
        ON op.orderId=os.orderId
	WHERE YEAR(os.orderDate) > 2019
	GROUP BY op.productId
	ORDER BY SUM(op.quantity) ASC, SUM(op.quantity*op.price) ASC
) AS bottomProducts

JOIN Product p 
    ON p.productId=bottomProducts.productId

JOIN OrderProduct op 
    ON op.productId=bottomProducts.productId

JOIN OrderSummary os 
    ON os.orderId=op.orderId

WHERE 
    YEAR(os.orderDate) > 2019

GROUP BY 
    YEAR(os.orderDate), 
    p.productId, 
    p.productName
    
ORDER BY 
    p.productId, 
    year ASC, 
    quantitySold ASC, 
    revenue ASC;
