<?php
session_start();

include('queries.php');

$data = new queries();
$all = $data->fetchAll();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/progjs.js" type="text/javascript"></script>
    
    <title>Product list</title>
</head>


<main>
<body class="body-index">
<div class="navbar fixed-top navbar-expand-sm" id="navbar-index">
  <div class="container d-flex flex-wrap">
        <h5 class="p-2 col-md-6 font-weight-normal">Product List</h5>
          <div class="d-flex input-row">
              <a href="/addproduct.php"><button class="btn btn-outline-primary" >ADD</button></a> 
          
              <form action="actiondelete.php" method="POST">
              
              <button class="btn btn-outline-primary" type="submit" name="delete_checked">MASS DELETE</button> 
          
              </div>
</div>
</div>
                            
<div class="container-main d-flex col-md-12 flex-wrap justify-content-evenly" id="container-main">
  
<?php
    if(isset($all['0'])){
      $id=1;
      foreach($all as $key=>$val){
?>


<div class="card p-1 mb-5 align-items-center" id="card-index">

    <div class="form-check align-self-start">
      <label class="form-check-label m-2 mb-3">
        <input type="checkbox" class="delete-checkbox" name="idsarr[]" value="<?= $val['id'];?>">
      </label>
    </div>
    
    <ul class="group-items">

      <li class="list-group-item m-2"><?= $val['sku'];?></li>
      <li class="list-group-item m-2"><?= $val['name'];?></li>
      <li class="list-group-item m-2"><?= $val['price'];?> $</li>
      <li class="list-group-item m-2"><?= $val['type_name'];?></li>
      <li class="list-group-item m-2"><?= $val['total'];?> <?= $val['type_val'];?></li>
            
    </ul>
    
</div>
<?php 
    $id++;
  } } else { ?>
      <span>No records found</span>
    <?php } ?>


    </form>


</div>


<footer>Scandiweb test assignment</footer>
</main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>