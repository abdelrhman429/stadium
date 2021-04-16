<?php 
    include "db.php";
	include "init.php";
    include $templateRoute . "header.php";  

?>

<?php

if (isset($_SESSION["username"])) {
    $username = $_SESSION["username"];
    session_write_close();
} else {
    // since the username is not set in session, the user is not-logged-in
    // he is trying to access this page unauthorized
    // so let's clear all session variables and redirect him to index
    session_unset();
    session_write_close();
    $url = "./indexx.php";
    //header("Location: $url");
    echo"
    <script >
   document.location='./indexx.php'
    </script>";
}

?>
<head>    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/></head>


<!--LANGUAGES-->
<script>
 function changeLang(){
  document.getElementById('form_lang').submit();
 }
 </script>
<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3><?=_SUB_TITLE?></h3><br>
            </div>
        <?php
            // Select Products form database
            $sql = "SELECT * FROM products ORDER BY id DESC LIMIT 12";
            $result = mysqli_query($conn, $sql);
            if (mysqli_num_rows($result) > 0) {
              // output data of each row
                while($row = mysqli_fetch_assoc($result)) {
                    ?>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-shop-product">
                                <div class="product-upper">
                                    <a href="product.php?stadium=<?php echo $row['slug']; ?>">
                                    <img src="layouts/img/<?php echo $row['image']; ?>" alt="" style="width: 100%; height: 300px !important;">
                                    </a>
                                </div>
                                <h2><a href=""><?php echo $row['name'] ?></a></h2>
                                <span style="font-weight: bold;"><?php echo substr($row['short_description'], 0, 25) ?>...</span>
                                <div class="product-carousel-price">
                                    <ins>$<?php echo $row['regular_price']  ?></ins>
                                </div>  

                                <div class="product-option-shop">
                                    <a class="add_to_cart_button" href="booking.php?stadium=<?php echo $row['slug'];  ?>">
                                    <button  style="margin: 0px 55px 0px 60px;
                                                    border: none; border-radius: 16px;
                                                    display: inline-block; background:#111111; 
                                                    color:#D3D3D3"
                                        ><b><?=_BOOK_NOW?></b></button>
                                    </a> 
                                </div>                       
                            </div>
                        </div>
                   <?php
                }
            } else {
                echo "Not Found Stadiums";
            }

            mysqli_close($conn);
        ?>  
            <div class="col-md-12">
                <center>
                    <a href="stadiums.php" class="btn btn-primary btn-lg"><?=_MORE_STADIUMS?></a>
                </center>
            </div> 
        </div>
    </div>
</div>

<?php include $templateRoute . "footer.php";  ?>
