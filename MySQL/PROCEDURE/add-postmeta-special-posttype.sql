DELIMITER ;;

CREATE PROCEDURE ORDER_USER_RELATION()
BEGIN
DECLARE n INT DEFAULT 0;
DECLARE i INT DEFAULT 0;
DECLARE order_id INT DEFAULT 0;
SELECT COUNT(*) FROM wp_posts AS posts WHERE posts.post_type = 'rhs-service-order' INTO n;
SET i = 0;
WHILE i < n DO
    SELECT ID FROM wp_posts AS posts WHERE posts.post_type = 'rhs-service-order' LIMIT i,1 INTO order_id;
    INSERT INTO wp_postmeta(post_id,meta_key,meta_value) VALUES (order_id,'request-user',1);
    SET i = i + 1;
END WHILE;
END
;;

DELIMITER ;
