<?php
session_start();

include('queries.php');

$data = new queries();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    
    <title>Add Product</title>
</head>
<body class="body-index">
<div class="navbar fixed-top navbar-expand-sm" id="navbar-index">
    <div class="container d-flex flex-wrap">
        <h5 class="p-2 col-md-8 font-weight-normal">Product Add</h5>
        <div class="d-flex input-row">
                            
                <a href="/index.php"><button class="btn btn-outline-primary">CANCEL</button></a>

    <form action="actionadd.php" method="POST" id="product_form">

                <button class="btn btn-outline-primary" id="save" name="submit">SAVE</button> 
 
        </div>
    </div>
</div>

<main>
<div class="container d-flex col-md-9 flex-wrap justify-content-left" id="container-main">
    
        <div class="input-container">
            <div class="input-row">
                <label for="sku">SKU</label>
                <input type="text" placeholder="sku" id="sku" name="sku" required>
            </div>
            <h5 id="check-sku" class="checking">Please, submit required data</h5>
            <h5 id="check-sku-value" class="checking">Please, provide the data of indicated type</h5>

            <div class="input-row">
                <label for="name">Name</label>
                <input type="text" placeholder="name" id="name" name="name" required>
            </div>
            <h5 id="check-name" class="checking">Please, submit required data</h5>
            <h5 id="check-name-value" class="checking">Please, provide the data of indicated type</h5>


            <div class="input-row">
                <label for="price">Price ($)</label>
                <input type="text" placeholder="price" id="price" name="price" required>
            </div>
            <h5 id="check-price" class="checking">Please, submit required data</h5>
            <h5 id="check-price-value" class="checking">Please, provide the data of indicated type</h5>

            

            <div class="dropdown input-row">
            <label for="type_switcher">Type switcher</label>

                <select name="type_id" class="custom-select" id="productType">
                    <option value="" class="dropdown-item"></option>
                    <option value="1" class="dropdown-item" id="item-dvd">DVD</option>
                    <option value="2" class="dropdown-item" id="item-book">Book</option>
                    <option value="3" class="dropdown-item" id="item-furniture">Furniture</option>
                </select>
                
            </div>

            <div class="card-addproduct p-4" id="DVD">               
                <div class="input-row">
                    <label for="size">Size (MB)</label>
                    <input type="text" placeholder="size" id="size" name="size">
                    
                </div>
                <h5 id="check-size" class="checking">Please, provide size</h5>
                <h5 id="check-size-value" class="checking">Please, provide the data of indicated type</h5>
                
                
            </div>

            <div class="card-addproduct p-4" id="Book">               
                <div class="input-row">
                    <label for="weight">Weight (KG)</label>
                    <input type="text" placeholder="weight" id="weight" name="weight">
                </div>
                <h5 id="check-weight" class="checking">Please, provide weight</h5>
                <h5 id="check-weight-value" class="checking">Please, provide the data of indicated type</h5>
                
            </div>

            <div class="card-addproduct p-4" id="Furniture">  
                <div class="input-row">
                    <label for="length">Length (CM)</label>
                    <input type="text" placeholder="length" id="length" name="length">
                </div>
                <h5 id="check-length" class="checking">Please, provide length</h5>
                <h5 id="check-length-value" class="checking">Please, provide the data of indicated type</h5>              

                <div class="input-row">
                    <label for="width">Width (CM)</label>
                    <input type="text" placeholder="width" id="width" name="width">
                </div>
                <h5 id="check-width" class="checking">Please, provide width</h5>
                <h5 id="check-width-value" class="checking">Please, provide the data of indicated type</h5>

                <div class="input-row">
                    <label for="height">Height (CM)</label>
                    <input type="text" placeholder="height" id="height" name="height">
                </div>
                <h5 id="check-height" class="checking">Please, provide height</h5>
                <h5 id="check-height-value" class="checking">Please, provide the data of indicated type</h5>                
            </div>

            <p>&nbsp;</p>
            
        </div>
    </form>
</div>

<footer>Scandiweb test assignment</footer>
</main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="/progjs.js" type="text/javascript"></script>
</body>
</html>