SELECT 
    YEAR(os.orderDate) AS year,
    pm.paymentType, 
    SUM(os.totalAmount) AS totalPaymentAmount
FROM OrderSummary os

JOIN Customer c 
    ON c.customerId=os.customerId

JOIN (
    SELECT 
        customerId, 
        MIN(paymentMethodId) AS minPaymentMethodId
	FROM PaymentMethod
	GROUP BY customerId
) AS primaryMethod 
    ON c.customerId=primaryMethod.customerId

JOIN PaymentMethod pm 
    ON pm.customerId=c.customerId 
    AND pm.paymentMethodId=primaryMethod.minPaymentMethodId

JOIN Shipment s 
    ON os.shipmentId=s.shipmentId

WHERE YEAR(os.orderDate) > 2019

GROUP BY 
    YEAR(os.orderDate), 
    pm.paymentType

ORDER BY 
    year ASC, 
    totalPaymentAmount DESC;
