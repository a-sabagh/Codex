SELECT postmeta.meta_value as id, users.user_login AS phone, users.display_name, count(posts.ID), SUM(postmeta2.meta_value) AS total_price , GROUP_CONCAT(posts.post_modified ORDER BY posts.post_modified DESC LIMIT 1) 
    FROM wp_sdposts AS posts  
    INNER JOIN wp_sdpostmeta AS postmeta 
    ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID 
    INNER JOIN wp_sdpostmeta AS postmeta2
    ON postmeta2.post_id = posts.ID
    INNER JOIN wp_sdusers AS users 
    ON users.ID = postmeta.meta_value 
    WHERE posts.post_type LIKE 'shop_order' 
    AND posts.post_modified BETWEEN '2024-03-21' AND '2025-02-18' 
    AND postmeta2.meta_key = '_order_total'  
    GROUP BY postmeta.meta_value
    ORDER BY SUM(postmeta2.meta_value) DESC;
