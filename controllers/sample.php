<?php

// Retrieve random row from database
$q = mysqli_query($db, "
SELECT
*,
DATE_FORMAT(post_created, '%d.%m.%Y %H:%i') post_created
FROM posts
NATURAL JOIN authors
ORDER BY RAND()
LIMIT 1");

$post = mysqli_fetch_assoc($q);

// Overwrite from sample page to post
$page = 'post';
?>
