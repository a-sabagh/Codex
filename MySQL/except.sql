SELECT postmeta.meta_value as id, users.user_login AS phone, users.display_name
    FROM wp_sdposts AS posts  
    INNER JOIN wp_sdpostmeta AS postmeta 
    ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID 
    INNER JOIN wp_sdusers AS users
    ON users.ID = postmeta.meta_value
    WHERE posts.post_type LIKE 'shop_order'  
    AND MONTH(posts.post_modified ) < MONTH(NOW() - INTERVAL 2 MONTH) 
    AND ( YEAR(posts.post_modified ) = YEAR(NOW()) OR YEAR(posts.post_modified ) = YEAR(NOW() - INTERVAL 2 MONTH) )
    GROUP BY postmeta.meta_value 
EXCEPT 
    SELECT postmeta.meta_value as id, users.user_login AS phone, users.display_name
    FROM wp_sdposts AS posts  
    INNER JOIN wp_sdpostmeta AS postmeta 
    ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID 
    INNER JOIN wp_sdusers AS users
    ON users.ID = postmeta.meta_value
    WHERE posts.post_type LIKE 'shop_order'  
    AND MONTH(posts.post_modified ) > MONTH(NOW() - INTERVAL 2 MONTH) 
    AND ( YEAR(posts.post_modified ) = YEAR(NOW()) OR YEAR(posts.post_modified ) = YEAR(NOW() - INTERVAL 2 MONTH) )
    GROUP BY postmeta.meta_value;
