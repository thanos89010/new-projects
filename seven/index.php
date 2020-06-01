<?php
include "function.php";
check();
connectWelcome();
  $host="localhost";
  $username="root";
  $userpass="";
  $database="seven";
  $connection=@mysqli_connect($host,$username,$userpass,$database); //απενεργοποιεί τα warnings & erros του apache
  if(!$connection){
    echo "Mysql Connection Error";
    die();
  }
  $sqlMenu = "SELECT categories.categories_name,categories_id from categories";
  $resultMenu=mysqli_query($connection,$sqlMenu);
  $sqlCategoryName = "SELECT categories_id, categories_name from categories";
  $resultCategoryName=mysqli_query($connection,$sqlCategoryName);
  $sqlPhoto = "SELECT categories.categories_photo from categories LIMIT 4";
  $resultPhoto=mysqli_query($connection,$sqlPhoto);

  
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <script src="https://kit.fontawesome.com/6a3930ec32.js" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/base.css">
</head>

<body>
 <?php include "header.php"; ?>
  <article class="flex j-center">
    <div class="article-conteiner flex j-center">
      <div class="article-left flex  ">
        <div id="summary">
          <div id="summary">
            <img class="img-poster" src="images/photo0.png" alt="">
          </div>
        </div>
      </div>
      <div class="article-right flex ">
        <div class="article-righ-up flex">
          <div class="article-box">
            <img src="images/MikroBanner-TSANTES.jpg" alt="">
          </div>
          <div class="article-box">
            <img src="images/photo2.jpg" alt="">
          </div>
        </div>
        <div class="article-righ-down flex ">
          <div class="article-box">
            <img src="images/photo3.jpg" alt="">
          </div>
          <div class="article-box">
            <img src="images/photo4.jpg" alt="">
          </div>
        </div>
      </div>
    </div>
    </div>
  </article>
  <section class="products flex direction-c a-center j-center">
    <div class="products-conteiner flex direction-c ">
      <div class="product-slide">
        <?php 
            while($row=mysqli_fetch_array($resultCategoryName)){
            ?>
        <span id="<?=$row["categories_id"]?>"><?=$row["categories_name"]?></span>
        <?php } ?>
      </div>
      <div class="products-one flex">

        <script>
          const productsTitle = document.querySelectorAll(".product-slide span")
          
          productsTitle.forEach(title => {
           
            title.addEventListener("click", function () {
              $(".product-one").load("productbycategory.php?id=" + this.id);
             
            })
          })
        </script>

        <div class="product-one flex  a-center flex-1"><p class="category-choose">Διάλεξε την κατηγορία σου </p></div>
      </div>
    </div>
    <img class="zero-ground" src="images/zeroground-banner1920x175.jpg" alt="">
  </section>
  <section>
    <div class="title-catecory">
      <h2>Διάλεξε Κατηγορία</h2>
    </div>
    <div class="choose-category flex">
      <?php 
      while($row=mysqli_fetch_array($resultPhoto)) {    
        ?>
      <div class="img-category">
        <img src="<?=$row["categories_photo"]?>" alt="">
      </div>
      <?php }?>
    </div>
    </div>
  </section>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
  <script src="js/app.js"></script>
</body>

</html>