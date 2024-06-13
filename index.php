<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Newsweek</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
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
    <?php
        include 'connect.php';
        define('UPLPATH', 'img/');
    ?>
        <section class="USA">
        <h2>USA</h2>
        <div class="b-container">
    <?php
        $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='USA' LIMIT 3";
        $result = mysqli_query($dbc, $query);
        while($row = mysqli_fetch_array($result)) {
        echo '<article>';
        echo '<img src="' . UPLPATH . $row['slika'] . '" alt="nema slike">';
       
        echo '<h4>';
        echo '<a href="clanak.php?id='.$row['id'].'">';
        echo $row['naslov'];
        echo '</a></h4>';
        echo '</article>';
        }
    ?> 
    </div>
</section>
    <section class="Svijet">
        <h2>Svijet</h2>
        <div class="b-container">
    <?php
        $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='Svijet' LIMIT 3";
        $result = mysqli_query($dbc, $query);
        while($row = mysqli_fetch_array($result)) {
        echo '<article>';
        echo'<div class="article">';
        echo '<img src="' . UPLPATH . $row['slika'] . '" alt="nema slike">';
      
        echo '<h4>';
        echo '<a href="clanak.php?id='.$row['id'].'" >';
        echo $row['naslov'];
        echo '</a></h4>';
        echo '</article>';
        }
    ?> 
    </div>
    </main>
   <footer class="footer-clanak" id="footer">
        <div class="footer-info">
            <h5>© 2019 Newsweek</h5>
            <p>Autor: Bruno Agatic Kontakt e-mail: bruno.agatic@gmail.com Godina izrade: 2024</p>
        </div>
    </footer>
</body>
</html>