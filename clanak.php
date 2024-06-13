<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Newsweek</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <?php
    include 'connect.php';
    $id=$_GET['id'];
    $query = "SELECT * FROM vijesti WHERE id='$id'";
    $result = mysqli_query($dbc, $query);

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
        <?php while($row = mysqli_fetch_array($result)): ?>
    <div class="hero">
        <h2><?php echo $row['kategorija'];?></h2>
        <h1><?php echo $row['naslov'];?></h1>
    
        <?php

    $mysqlDatum = $row['datum']; 
    $formatiraniDatum = date('n/j/y', strtotime($mysqlDatum));


    echo '<p>' . $formatiraniDatum . '</p>';
    ?>
        
    </div>
    <div class="slika">
        <?php echo "<img src= 'img/".$row['slika']."' alt='Nema slike'>";?>
    </div>
    <div class="text">
        <p><?php echo $row['tekst'];?></p>
    </div>
    <?php endwhile; ?>
    </main>
  
    <footer class="footer-clanak" id="footer">
        <div class="footer-info">
            <h5>© 2019 Newsweek</h5>
            <p>Autor: Bruno Agatic Kontakt e-mail: bruno.agatic@gmail.com Godina izrade: 2024</p>
        </div>
    </footer>
</body>