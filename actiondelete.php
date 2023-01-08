<?php
session_start();

include('queries.php');

$obj = new queries();

if(isset($_POST['delete_checked']) && (isset($_POST['idsarr']))){

    $all_ids = $_POST['idsarr'];
    $extract_id = implode(',',$all_ids);

    $obj->deleteData('products', $extract_id);
        
    header("Location: index.php");
        
    } else {
        header("Location: index.php");
    }

    
    



?>