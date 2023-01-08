<?php

include("database.php");

class Queries extends Database {

    public function fetchAll(){
        $sql="SELECT products.id, products.sku, products.name, products.price, prod_types.type_name, prod_types.type_val,
            GROUP_CONCAT(product_values.value SEPARATOR'x') AS total
            FROM products
            JOIN product_values ON products.id = product_values.product_id
            JOIN prod_types ON products.type_id = prod_types.id
            GROUP BY products.sku
            ORDER BY id DESC
            ";

        $result = $this->connect()->query($sql);
        
        if($result->num_rows>0){
            $arr = array();
            while($row = $result->fetch_assoc()){
                $arr[] = $row;
            }
            return $arr;
        } else {
            return null;
        }

    }

    public function insertData($table1, $table2, $condition_arr, $condition2_arr, $attr_id){
        if($condition_arr !=''){
            foreach($condition_arr as $key=>$val){
                $fieldArr[] = $key;
                $valueArr[] = $val;
            } 
            $field=implode(",", $fieldArr);
            $value=implode("','", $valueArr);
            $value = "'".$value."'";

            $sql = "insert into $table1($field) values($value)";
            
            if ($this->connect()->query($sql) === TRUE) {
                $sqlmax = "SELECT MAX(id) FROM ($table1)";
                $res = $this->connect()->query($sqlmax);

                while($row = mysqli_fetch_array($res)){
                    $product_id = $row[0];
                }

                // echo "<pre>";
                // print_r($sql);
            }
        }

                if($condition2_arr !=''){
                    foreach($condition2_arr as $key=>$val){
                        $fieldArr2[] = $key;
                        $valueArr2[] = $val;
                    } 
                    $afield=implode(",", $fieldArr2);
                    $valueArr2 = array_filter($valueArr2);
                    
                    $avalue=implode("','", $valueArr2);

                    $avalue = "'".$avalue."'";


                    if($attr_id == 3){
                        
                        $arr1 = array_filter($valueArr2);
                        unset($arr1[3], $arr1[4]);
                        $arrfir = array_values($arr1);


                        $arr2 = array_filter($valueArr2);
                        unset($arr2[2],$arr2[4]);
                        $arrsec = array_values($arr2);


                        $arr3 = array_filter($valueArr2);
                        unset($arr3[2],$arr3[3]);
                        $arrth = array_values($arr3);


                        $sql2 = "insert into $table2 ";
                        $sql2 .= "values(null, $product_id, $attr_id, $arrfir[0]),";  
                        $sql2 .= "(null, $product_id, $attr_id, $arrsec[0]),";  
                        $sql2 .= "(null, $product_id, $attr_id, $arrth[0]);";  

                        // echo "<pre>";
                        // print_r($sql2);                      
                    
                    } else {
                        $sql2 = "insert into $table2 values(null, $product_id, $attr_id, $avalue)";    
                    }

                    $result = $this->connect()->query($sql2);   
                    
            }

            $this->connect()->close();
    }


    public function deleteData($table, $extract_id){
        $sql = "delete from $table where id in($extract_id)";
        $result = $this->connect()->query($sql);   
    }


}
?>