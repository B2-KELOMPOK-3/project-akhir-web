<?php
    ob_start();
    session_start();
    ob_end_clean();

?> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polygon Bike</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
</head>

<body>
    <!--Header-->
    <div class="medsos">
        <div class="container">
            <ul>
                <li><a href="https://web.facebook.com/polygonbikesid"><i class="fa-brands fa-facebook"></i></a></li>
                <li><a href="https://www.youtube.com/user/PolygonCycleID"><i class="fa-brands fa-youtube"></i></a></li>
                <li><a href="https://www.instagram.com/polygonbikesid/?hl=id"><i class="fa-brands fa-instagram"></i></a>
                </li>
            </ul>

        </div>
    </div>
    <header>
        <div class="container">
            <h1><img src="assets/logo_polygon-removebg-preview.png" alt="" srcset=""></h1>
            <ul class="navbar">
            <li class="active"><a href="index.php"><i class="fa fa-fw fa-home"></i> Home</a></li>
                <li><a href="product.php"><i class="fa fa-fw fa-bicycle"></i> Product</a></li>

                <?php
                if(isset($_SESSION["username"])){
                    $nama = $_SESSION["username"];?>
                        <?php if($nama == "admin"){?>
                        <li><a href="admin.php"><i class="fa fa-fw fa-tachometer"></i>Dashboard</a></li>
                        <?php }?>
                <li><a href="#"><i class="fa fa-fw fa-user"></i><?=ucfirst($nama)?></a></li>
                <li><a href="logout.php"><i class="fa fa-fw fa-sign-out"></i>Logout</a></li>
                <?php }else{?>
                <li><a href="login.php"><i class="fa fa-fw fa-user"></i>Login</a></li>
                <?php }?>

                <li><a href="#"><i class="bi-brightness-high-fill" id="toggleDark"></i></a></li>
            </ul>
        </div>
    </header>

    <!--Banner-->
    <section class="banner nover">
        <h2><img src="assets/polygon comunity.jpg" alt="" srcset=""></h2>
    </section>

    <!--Footer-->
    <footer>
        <div class="container">
            <small>Copyright &copy; 2022 - Polygon, All Right Reserved.</small>
        </div>
    </footer>
    <script src="js/script.js"></script>
</body>

</html>