-- Economic Data Analysis: Regional Sales and Profit Margin
-- This query calculates the total sales and average profit margin by region.

SELECT 
    region_name,
    COUNT(transaction_id) AS total_transactions,
    SUM(sales_amount) AS total_revenue,
    AVG(profit_margin) AS avg_profit_margin
FROM 
    regional_economic_data
WHERE 
    transaction_year = 2026
GROUP BY 
    region_name
ORDER BY 
    total_revenue DESC;