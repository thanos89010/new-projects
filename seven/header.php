<header class=' flex direction-c a-center'>
    <div class="tob-bar flex j-center">
      <div class="top-bar-conteiner flex j-between">
        <div class="social-shops flex ">
          <div class="social">
            <i class="fab fa-facebook-f"></i>
            <i class="fab fa-instagram"></i>
            <i class="fab fa-pinterest-p"></i>
            <i class="fab fa-youtube"></i>
          </div>
          <div class="shops ">Όλα τα Kαταστήματα</div>
        </div>
        <div class="contact-welcome flex">
          <div class="welcome-user">welcome <?=$_SESSION["username"] ?></div>
          <div class="contact">Επικοινωνία</div>
        </div>
      </div>
    </div>
    <div class="midle-header flex j-center a-center">
      <div class="midle-header-conteiner flex j-between a-center">
      <div class="search flex-1">
        <div class="searchAuto flex direction-c">
          <input class='input-header p1' placeholder="Αναζήτηση" type="text">
          <div class="dropdown is-active">
            <div class="dropdown-menu">
              <div class="dropdown-content results">
                <div class="movieChoose flex p1 direction-c"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="logo flex-1 ">
        <img src="images/seven-logo.jpg" alt="">
      </div>
      <div class="login-wishlist-cart flex flex-1 j-end">
        <div class="login flex direction-c p1 a-center">
          <i class="fas fa-sign-in-alt"></i>
          <span>Σύνδεση</span>
        </div>
        <div class="wishlist flex direction-c p1 a-center">
          <i class="fas fa-sign-in-alt"></i>
          <span>Αγαπημένα</span>
        </div>
        <div class="cart flex direction-c p1 a-center">
          <i class="fas fa-sign-in-alt"></i>
          <span>Καλάθι</span>
        </div>
      </div>
    </div>
    </div>
    </div>
    <nav class="nav-header direction-c flex j-around a-center">
      <ul class="ul-nav-header flex j-around">
        <?php 
            while($row=mysqli_fetch_array($resultMenu)
            ){
            ?>
        <li id="<?=$row["categories_id"]?>" class="product-category"><?=$row["categories_name"]?></li>
        
        <?php }?>
      
      </ul>
      <div class="dropdown nav-dropdown">
        <div class="dropdown-menu ">   
          <div class="dropdown-content test flex direction-c">      
      <script>
          const productsTitle1 = document.querySelectorAll(".ul-nav-header li")
          const ulProduct = document.querySelector(".test")
          const dropdownMenu = document.querySelector(".nav-dropdown")
          
          
          productsTitle1.forEach((title,idx) => {
            title.addEventListener("mouseover", function () {
              dropdownMenu.classList.add('is-active');
              ulProduct.setAttribute("id", `categoryNum-${idx}`);
              test.style.display = "flex";
              $(".test").load("productbycategory1.php?id=" + this.id);
             
            })
          })
          const test=document.querySelector(".test");
          document.addEventListener('click', event => {
            if (!test.contains(event.target) || test.contains(event.target)) {
              test.style.display = "none";
              console.log(event.target);
            }
            
          });
          
        </script>
          </div>  
        </div>
      </div>
    </nav>
  </header>