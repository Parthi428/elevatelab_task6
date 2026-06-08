CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount INT,
    product_id INT
);

INSERT INTO online_sales VALUES
(1, '2024-01-05', 500, 101),
(2, '2024-01-15', 300, 102),
(3, '2024-02-10', 700, 103),
(4, '2024-02-20', 200, 101),
(5, '2024-03-05', 900, 104),
(6, '2024-03-25', 400, 102);

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;