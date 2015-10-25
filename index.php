<?php

$page_load_start = microtime(1);
//Connect to db
require 'include/database.php';

// Set page
$page = isset($_GET['page']) ? $_GET['page'] : 'home';
// Include require page
require "pages/$page.php";

echo "Lehte laaditi " . round(microtime(1) - $page_load_start, 4) . " sekundit";