SELECT st.id,en.phone,en.display_name,en.count,en.orders,en.date FROM 
    ( 
        (
            SELECT postmeta.meta_value as id, users.user_login AS phone, users.display_name 
            FROM wp_sdposts AS posts  
            INNER JOIN wp_sdpostmeta AS postmeta 
            ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID 
            INNER JOIN wp_sdusers AS users
            ON users.ID = postmeta.meta_value
            WHERE posts.post_type LIKE 'shop_order' 
            AND posts.post_modified BETWEEN '2024-01-21' AND '2024-02-20' 
            GROUP BY postmeta.meta_value 
        )
        EXCEPT 
        (
            SELECT postmeta.meta_value as id, users.user_login AS phone, users.display_name 
                FROM wp_sdposts AS posts  
                INNER JOIN wp_sdpostmeta AS postmeta 
                ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID 
                INNER JOIN wp_sdusers AS users
                ON users.ID = postmeta.meta_value
                WHERE posts.post_type LIKE 'shop_order' 
                AND posts.post_modified < '2024-01-21' 
                GROUP BY postmeta.meta_value 
            INTERSECT 
                SELECT postmeta.meta_value as id, users.user_login AS phone, users.display_name 
                FROM wp_sdposts AS posts  
                INNER JOIN wp_sdpostmeta AS postmeta 
                ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID 
                INNER JOIN wp_sdusers AS users
                ON users.ID = postmeta.meta_value
                WHERE posts.post_type LIKE 'shop_order' 
                AND posts.post_modified BETWEEN '2024-01-21' AND '2024-02-20' 
                GROUP BY postmeta.meta_value 
        ) 
    ) st 
    LEFT JOIN 
    (
        SELECT postmeta.meta_value as id, users.user_login AS phone, users.display_name, count(posts.ID) AS count, GROUP_CONCAT(posts.ID) AS orders , GROUP_CONCAT(TO_CHAR(posts.post_modified,'YYYY-MM-DD')) AS date  
        FROM wp_sdposts AS posts  
        INNER JOIN wp_sdpostmeta AS postmeta 
        ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID 
        INNER JOIN wp_sdusers AS users
        ON users.ID = postmeta.meta_value
        WHERE posts.post_type LIKE 'shop_order' 
        GROUP BY postmeta.meta_value 
    ) en ON st.id = en.id 
    ORDER BY en.count DESC    
