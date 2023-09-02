-- Total revenue for each product category
SELECT
    category,
    SUM(price * quantity) AS total_revenue
FROM
    orders
JOIN
    order_items ON orders.order_id = order_items.order_id
JOIN
    products ON order_items.product_id = products.product_id
GROUP BY
    category;

-- Monthly sales trend
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(price * quantity) AS monthly_sales
FROM
    orders
JOIN
    order_items ON orders.order_id = order_items.order_id
GROUP BY
    month
ORDER BY
    month;
