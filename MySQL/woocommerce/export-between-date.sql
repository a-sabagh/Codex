SELECT postmeta.meta_value as id, users.user_login AS phone, users.display_name, count(posts.ID), GROUP_CONCAT(posts.ID) , MONTHNAME(posts.post_modified) 
    FROM wp_sdposts AS posts  
    INNER JOIN wp_sdpostmeta AS postmeta 
    ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID 
    INNER JOIN wp_sdusers AS users
    ON users.ID = postmeta.meta_value
    WHERE posts.post_type LIKE 'shop_order'  
    AND posts.post_modified BETWEEN '2024-01-21' AND '2024-02-20' 
    GROUP BY postmeta.meta_value
    ORDER BY count(posts.ID);
