<?php
session_start();

include('queries.php');

$obj = new queries();

if(isset($_POST['submit'])){
    $sku=$obj->get_safe_str($_POST['sku']);
    $name=$obj->get_safe_str($_POST['name']);
    $price=$obj->get_safe_str($_POST['price']);
    $type_id=$obj->get_safe_str($_POST['type_id']);

    
    $size=$obj->get_safe_str($_POST['size']);
    $weight=$obj->get_safe_str($_POST['weight']);
    $length=$obj->get_safe_str($_POST['length']);   
    $width=$obj->get_safe_str($_POST['width']);
    $height=$obj->get_safe_str($_POST['height']);  


    $condition_arr = array('sku'=>$sku, 'name'=>$name, 'price'=>$price, 'type_id'=>$type_id);
    $condition2_arr = array('size'=>$size, 'weight'=>$weight, 'length'=>$length, 'width'=>$width, 'height'=>$height );
    

    if(isset($size)){
        $attr_id = 1;
    } elseif (isset($weight)){
        $attr_id = 2;
    } elseif (isset($length) && isset($width) && isset($height)){
        $attr_id = 3;
    }   
       

    $obj->insertData('products', 'product_values', $condition_arr, $condition2_arr, $attr_id);
    

    header("Location: index.php");
    

} else {
    
    header("Location: index.php");
}

    
    


