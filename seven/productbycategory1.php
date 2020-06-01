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

  $sqlSubCategory = "SELECT * FROM sub_categories where sub_category_categories_id=".$_GET["id"];
  $resultSubCategory=mysqli_query($connection,$sqlSubCategory);
while($row=mysqli_fetch_array($resultSubCategory)){
?>

    <div class="dropdown-item menu-s"><?=$row["sub_Category_name"]?></div>

<?php }  ?>

