<?php

class Database {
    
    private $db_host;
    private $db_user;
    private $db_psw;
    private $db_name;

    public function connect($connectionType = 'mysqli'){
        $this->db_host = 'localhost';
        $this->db_user = 'root';
        $this->db_psw = 'a2a3';
        $this->db_name = 'db_products';

        if($connectionType == 'mysqli'){
        $conn = new mysqli($this->db_host, $this->db_user, $this->db_psw, $this->db_name);
        if($conn->connect_error){
            exit($conn->connect_error);
        }
        return $conn;
    }
}

    public function get_safe_str($str){
        if($str!=''){
        return mysqli_real_escape_string($this->connect(), $str);
        }
    }
}

?>