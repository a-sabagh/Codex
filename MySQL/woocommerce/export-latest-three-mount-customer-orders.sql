SELECT 
    customermeta.meta_value AS customer_id, 
    customers.user_login AS phone, 
    customers.display_name AS name, 
    SUM(CAST(ordermeta.meta_value AS DECIMAL(10,2))) AS order_total,
    COUNT(orders.ID) AS order_count
FROM wp_sdpostmeta AS customermeta 
INNER JOIN wp_sdposts AS orders 
    ON customermeta.post_id = orders.ID 
    AND orders.post_type = 'shop_order'
    AND orders.post_status = 'wc-completed' 
    AND orders.post_modified BETWEEN '2025-02-19' AND '2025-05-21'
INNER JOIN wp_sdpostmeta AS ordermeta
    ON ordermeta.post_id = orders.ID 
    AND ordermeta.meta_key = '_order_total'
INNER JOIN wp_sdusers AS customers 
    ON customers.ID = customermeta.meta_value 
WHERE customermeta.meta_key = '_customer_user'
GROUP BY 
    customermeta.meta_value, 
    customers.user_login, 
    customers.display_name
ORDER BY 
    order_total DESC;
