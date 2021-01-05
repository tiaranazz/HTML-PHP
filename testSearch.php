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
    $sql = "SELECT * FROM hotel WHERE location ='$name'";
    $result = $con->query($sql);
}



?>

<!DOCTYPE html>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<style>
body {
    font-family: 'Aclonica';font-size: 22px;
    color: #C0850B;
    padding-top:150px
}
</style>
</head>
<body>

<center>

<h1>PAWTEL</h1>
<!-- Using method GET is suitable for search page-->
<form action="output.php" method="GET">
<select name="Search" id="search">
    <!-- Dropdown seacrh & filter-->
    <option disabled selected hidden>-Select Location-</option>
    <option value="Bangi" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Bangi') ? 'selected="selected"' : ''; ?>>Bangi</option>
    <option value="Batu Feringhi" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Batu Feringhi') ? 'selected="selected"' : ''; ?>>Batu Feringhi</option>
    <option value="Brinchang" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Brinchang') ? 'selected="selected"' : ''; ?>>Brinchang</option>
    <option value="Genting Highlands" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Genting Highlands') ? 'selected="selected"' : ''; ?>>Genting Highlands</option>
    <option value="Johor" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Johor') ? 'selected="selected"' : ''; ?>>Johor</option>
    <option value="Kota Kinabalu" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Kota Kinabalu') ? 'selected="selected"' : ''; ?>>Kota Kinabalu</option>
    <option value="Kuantan" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Kuantan') ? 'selected="selected"' : ''; ?>>Kuantan</option>
    <option value="Langkawi" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Langkawi') ? 'selected="selected"' : ''; ?>>Langkawi</option>
    <option value="Malacca" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Malacca') ? 'selected="selected"' : ''; ?>>Malacca</option>
    <option value="Port Dickson" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Port Dickson') ? 'selected="selected"' : ''; ?>>Port Dickson</option>
    <option value="Penang" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Penang') ? 'selected="selected"' : ''; ?>>Pulau Pinang</option>
    <option value="Ringlet" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Ringlet') ? 'selected="selected"' : ''; ?>>Ringlet</option>
    <option value="Seri Kembangan Selangor" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Seri Kembangan Selangor') ? 'selected="selected"' : ''; ?>>Seri Kembangan</option>
    <option value="Setiu" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Setiu') ? 'selected="selected"' : ''; ?>>Setiu</option>
</select>
<!-- submit button-->
<form>
<input type="submit" value="Search" onclick="output.php">
</form>
</center>
</form>


</body>
</html>