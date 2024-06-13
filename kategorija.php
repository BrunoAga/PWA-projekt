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
    include 'connect.php';
    session_start();
    $kategorija = $_GET['id'];
    $query = "SELECT * FROM vijesti WHERE kategorija='$kategorija' AND arhiva=0";
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
                    if (isset($_SESSION['$level']) && $_SESSION['$level'] == 1) {
                        echo '<li><a href="unos.html">Unos clanka</a></li>';
                    }
                    ?>
                </ul>
            </nav>
        </div>
    </header>

    <main class="content">
        <section>
            <h2><?php echo $kategorija; ?></h2>

            <?php
            $count = 0;

            while ($row = mysqli_fetch_array($result)) {
                if ($count % 3 == 0) {
                  
                    echo '<div class="b-container">';
                }

                echo '<article>';
                echo '<img src="img/' . $row['slika'] . '" alt="nema slike">';
                echo '<h4><a href="clanak.php?id=' . $row['id'] . '">' . $row['naslov'] . '</a></h4>';
                echo '</article>';

                $count++;

                if ($count % 3 == 0) {
                 
                    echo '</div>';
                }
            }

    
            if ($count % 3 != 0) {
                echo '</div>';
            }
            ?>
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
