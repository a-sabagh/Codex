
/*
global $wpdb;
update_option('old_query',
    array_values(
        array_map('intval',
            wp_list_pluck(
                $wpdb->get_results(
                    "SELECT distinct postmeta.meta_value as id
                        FROM wp_sdposts AS posts
                        INNER JOIN wp_sdpostmeta AS postmeta
                        ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID
                        INNER JOIN wp_sdusers AS users
                        ON users.ID = postmeta.meta_value
                        WHERE posts.post_type LIKE 'shop_order'
                        AND posts.post_modified BETWEEN '2024-06-11' AND '2024-12-12'
                        GROUP BY postmeta.meta_value"
                    )
            , 'id')
        )
    )
);

wp_send_json( implode( ',', get_option('old_query') ) );

*/

$collection = (
    
    array_values(

        $wpdb->get_results(
            "SELECT distinct users.user_login AS phone , users.display_name , postmeta.meta_value AS id
                FROM wp_sdposts AS posts
                INNER JOIN wp_sdpostmeta AS postmeta
                ON postmeta.meta_key LIKE '%customer%' AND postmeta.post_id = posts.ID
                INNER JOIN wp_sdusers AS users
                ON users.ID = postmeta.meta_value
                WHERE posts.post_type LIKE 'shop_order'
                AND posts.post_modified BETWEEN '2021-06-12' AND '2024-06-11'
                AND postmeta.meta_value NOT IN
                (" . implode( ',', get_option('old_query') ) . ")
                GROUP BY users.user_login"
        , ARRAY_A)

    )

);

// disable caching
$filename = "data_export_" . date("Y-m-d") . time() . ".csv";
$now = gmdate("D, d M Y H:i:s");

header("Expires: Tue, 03 Jul 2001 06:00:00 GMT");
header("Cache-Control: max-age=0, no-cache, must-revalidate, proxy-revalidate");
header("Last-Modified: {$now} GMT");

// force download  
header("Content-Type: application/force-download");
header("Content-Type: application/octet-stream");
header("Content-Type: application/download");

// disposition / encoding on response body
header("Content-Disposition: attachment;filename={$filename}");
header("Content-Transfer-Encoding: binary");

$df = fopen("php://output", 'w');

fputcsv($df, ['phone', 'id', 'display name']);

foreach ($collection as $row) {
    fputcsv($df, array_values($row) );
}

fclose($df);

die();
