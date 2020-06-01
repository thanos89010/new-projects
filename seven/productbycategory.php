<?php

$host="localhost";
  $username="root";
  $userpass="";
  $database="seven";
  $connection=@mysqli_connect($host,$username,$userpass,$database); //απενεργοποιεί τα warnings & erros του apache
  if(!$connection){
    echo "Mysql Connection Error";
    die();
  }

$sqlProduct = "SELECT * FROM products where product_category_id=".$_GET["id"]." ORDER BY RAND() LIMIT 5";
$resultProduct	=mysqli_query($connection,$sqlProduct);
while($row=mysqli_fetch_array($resultProduct)){
?>

    <div class="product-one product-single conteiner-product flex direction-c flex-1 a-center">
    <img class="product-photo" src="<?= $row['product_photo'];?>" alt="">
    <div class="product-name"><?= $row["product_name"];?></div>
    <div class="product-sku"><?= $row["product_sku"];?></div>
    <div class="product-price"><?= $row["product_price"];?>$</div>
    <div class="product-avelable"><?= $row["product_available"];?></div>
    <div class="product-show">Προβολη</div>
    </div>

<?php }  ?>

