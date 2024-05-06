SELECT count(posts.ID)
    FROM wp_sdposts AS posts  
    WHERE posts.post_type LIKE 'shop_order'  
    AND posts.post_modified BETWEEN '2024-01-21' AND '2024-02-20';
