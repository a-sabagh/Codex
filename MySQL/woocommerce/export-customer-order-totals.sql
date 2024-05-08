SELECT 
    customer_postmeta.meta_value as id, 
    users.user_login AS phone, 
    users.display_name, 
    count(posts.ID) AS count, 
    GROUP_CONCAT(posts.ID) AS orders , 
    GROUP_CONCAT(TO_CHAR(posts.post_modified,'YYYY-MM-DD')) AS date, 
    GROUP_CONCAT(DISTINCT posts.post_status) As statuses, 
    SUM(order_postmeta.meta_value) AS order_taotal 
FROM wp_sdposts AS posts  
INNER JOIN wp_sdpostmeta AS customer_postmeta 
ON customer_postmeta.meta_key LIKE '%customer%' AND customer_postmeta.post_id = posts.ID 
INNER JOIN wp_sdpostmeta AS order_postmeta 
ON order_postmeta.meta_key LIKE '_order_total' AND order_postmeta.post_id = posts.ID 
INNER JOIN wp_sdusers AS users
ON users.ID = customer_postmeta.meta_value
WHERE posts.post_status = 'wc-completed' 
GROUP BY customer_postmeta.meta_value;
