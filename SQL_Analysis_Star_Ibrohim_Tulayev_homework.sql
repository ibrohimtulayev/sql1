
SELECT 
    category,
    SUM(sales_amount) AS total_sales
FROM 
    sales
INNER JOIN 
    products ON sales.product_id = products.product_id
WHERE 
    sale_date BETWEEN 'start_date' AND 'end_date'
GROUP BY 
    category;

-- Calculate the average sales quantity by region for a particular product
SELECT 
    region,
    AVG(sales_quantity) AS avg_sales_quantity
FROM 
    sales
INNER JOIN 
    customers ON sales.customer_id = customers.customer_id
WHERE 
    product_id = 'specific_product_id'
GROUP BY 
    region;

-- Find the top five customers with the highest total sales amount
SELECT 
    customer_id,
    SUM(sales_amount) AS total_sales
FROM 
    sales
GROUP BY 
    customer_id
ORDER BY 
    total_sales DESC
LIMIT 5;
