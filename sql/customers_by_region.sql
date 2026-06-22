SELECT 
    YEAR(orderDate) AS year, 
    c.state, 
    COUNT(c.customerId) AS numCustomers, 
    SUM(op.quantity*op.price) AS revenue
FROM customer c

JOIN OrderSummary os 
    ON c.customerId=os.customerId

JOIN OrderProduct op 
    ON op.orderId=os.orderId

WHERE 
    YEAR(orderDate) > 2019

GROUP BY 
    YEAR(orderDate), 
    c.state

ORDER BY 
    year ASC, 
    revenue DESC, 
    numCustomers DESC;
