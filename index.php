<?php
$localhost = "localhost";
$username = "root";
$password = "";
$dbname = "pawtel";
$con = new mysqli($localhost, $username, $password, $dbname);

if( $con->connect_error){
die('Error: ' . $con->connect_error);
}




if( isset($_GET['Search']) ){
    $name = mysqli_real_escape_string($con, htmlspecialchars($_GET['Search']));
    $sql = "SELECT * FROM temp_class WHERE locations ='$name'";
    $result = $con->query($sql);
}
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta name="description" content="Affordable and professional web design">
	  <meta name="keywords" content="web design, affordable web design, professional web design">
  	<meta name="author" content="Brad Traversy">
    <title>Pawtel | Welcome</title>
    <link rel="stylesheet" href="./css/style.css">
    <link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
  </head>
  <body>
    <header>
      <div class="container">
        <div id="branding">
          <h1><span class="highlight">{</span> Pawtel <span class="highlight">}</span></h1>
        </div>
        <nav>
          <ul>
            <li class="current"><a href="index.php">Home</a></li>
            <li><a href="about.html">About</a></li>
          </ul>
        </nav>
      </div>
    </header>

    <section id="showcase">
      <div class="container">
        <h1>Where In Malaysia Do You Want To Go?
        <center>
        <!-- Using method GET is suitable for search page-->
        <form action="output.php" method="GET">
        <select name="Search" id="search">
            <!-- Dropdown seacrh & filter-->
            <option disabled selected hidden>-Select Location-</option>
            <option value="Genting Highlands" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Genting Highlands') ? 'selected="selected"' : ''; ?>>Genting Highlands</option>
            <option value="Kota Kinabalu" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Kota Kinabalu') ? 'selected="selected"' : ''; ?>>Kota Kinabalu</option>
            <option value="Penang" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Penang') ? 'selected="selected"' : ''; ?>>Pulau Pinang</option>
            <option value="Ranau" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Ranau') ? 'selected="selected"' : ''; ?>>Ranau</option>
        </select>
        <!-- submit button-->
        <form>
        <input type="submit" value="Search" onclick="output.php">
        </form>
    </center>
    </h1>
        <p></p>
      </div>
    </section>

    <section id="newsletter">
      <div class="container">
          <h1>EAT.LOVE.TRAVEL</h1>
        <p>Discover the world with your pets. Pets are not just animals. They are family.</p>
        <form>
        </form>
      </div>
    </section>

    <footer class="foot">
      <h3>FYP Project, Tiara binti Mohd Nazri &copy; 2017700023</h3>
    </footer>
  </body>
</html>
