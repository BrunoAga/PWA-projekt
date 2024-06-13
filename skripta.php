<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Newsweek</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
    include 'unos.php';
        $title = $_POST['naslov'];
        $about = $_POST['about'];
        $content = $_POST['sadrzaj'];
        $category = $_POST['kategorija'];
        $slika  = $_FILES['slika']['name'];
        $submit = $_POST['submit'];
        $target_dir = 'img/'.$slika;
        move_uploaded_file($_FILES["slika"]["tmp_name"], $target_dir);
     ?>
   <header>
   <p><span class="date"><?php echo date("D, M d, Y"); ?></span></p>
    <h1>Newsweek</h1>
    <div class="nav-container">
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="kategorija.php?id=USA">USA</a></li>
                <li><a href="kategorija.php?id=Svijet">Svijet</a></li>
                <li><a href="administracija.php">Administracija</a></li>
                <?php
                session_start();
                if (isset( $_SESSION['$level']) &&  $_SESSION['$level'] == 1) {
                echo '<li><a href="unos.html">Unos clanka</a></li>';
                }
                ?>
            </ul>
        </nav>
    </div>
</header>
    <main class="content">
        <section>
            <article class="novi">
                <?php if(isset($submit)):?>
                    <p><?php echo $category; ?></p>
                    <h2><?php echo $title; ?></h2>
                    <p>Autor:</p>
                    <p>Objavljeno:<?php echo date("d.m.Y"); ?></p>
                    <p style="padding:10px"><?php 
                    echo "<img  style='height:290px;width:520px;' src='img/$slika' alt='Nema slike'>"; 
                    ?></p>
                    <p class="about" style="padding:10px"><?php echo $about; ?></p>
                    <p class="sadrzaj" style="padding:10px"><?php echo $content; ?></p>
                    
                    
                <?php endif; ?>
            </article>
        </section>
    </main>
    <footer class="footer-clanak" id="footer">
        <div class="footer-info">
            <h5>© 2019 Newsweek</h5>
            <p>Autor: Bruno Agatic Kontakt e-mail: bruno.agatic@gmail.com Godina izrade: 2024</p>
        </div>
    </footer>
</body>
</html>