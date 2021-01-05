<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta name="description" content="Affordable and professional web design">
	  <meta name="keywords" content="web design, affordable web design, professional web design">
  	<meta name="author" content="Brad Traversy">
    <title>Pawtel | Around You</title>
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

      <center><h1>List of Hotels</h1>
<form name="" method="GET" action="output.php">
<select id='location' name="Search">
    <!-- Dropdown seacrh & filter-->
    <option disabled selected hidden>-Select Another Location?-</option>
    <option value="Genting Highlands" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Genting Highlands') ? 'selected="selected"' : ''; ?>>Genting Highlands</option>
    <option value="Kota Kinabalu" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Kota Kinabalu') ? 'selected="selected"' : ''; ?>>Kota Kinabalu</option>
    <option value="Penang" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Penang') ? 'selected="selected"' : ''; ?>>Pulau Pinang</option>
    <option value="Ranau" <?php echo (isset($_GET['Search']) && $_GET['Search']=='Ranau') ? 'selected="selected"' : ''; ?>>Ranau</option>
</select>
<input type="submit" value="Search" onclick="output.php">
<input type="button" value="Sort (A-Z)"  onclick="sort()">
<input type="button" value="Sort (Z-A)"  onclick="sort2()">
</form>
<br>
<br>

<table className="padding-table-columns" width="60%">
<tr align="center">
<th>Hotels</th>
<th>Descriptions</th>
</tr>
</center>


<!-- PHP for search function-->
<?php
if( isset($_GET['Search']) ){
while($row = $result->fetch_assoc()){
    ?>
    <tr>
    <td><center><?php echo'<img src='.$row['imageSRCs'].' width="400" height="200">'?><?php echo"</a>"?></center></td>
    <td><center><a target='_blank' href="<?php echo $row['names'] ?>"><?php echo $row['names'] ?></a></center>
    <br>
    <center><?php echo $row['locations']; ?></center>
    <br>
    <center><?php echo $row['prices']; ?></center>
    <br>
    <center><?php echo $row['details']; ?></center>
    <center><a target='_blank' href="<?php echo $row['booklinks'] ?>"><?php echo $row['booklinks'] ?></a></center></td>
    </tr>

    <?php
}
}

?>
</table>
<?php

$location = $_GET['loc2'];

$link = mysqli_connect("localhost", "root", "", "pawtel"); 
if($link === false){ 
	die("ERROR: Could not connect. " 
				. mysqli_connect_error()); 
} 

  
  if( isset($_GET['Search']) ){
      $name = mysqli_real_escape_string($con, htmlspecialchars($_GET['Search']));
      $sql = "SELECT * FROM temp_class where locations LIKE '%$name%'";
      $result = $con->query($sql);
  }

$sql = "SELECT * FROM temp_class WHERE locations LIKE '%$location%' ORDER BY names DESC"; 
if($res = mysqli_query($link, $sql)){ 
	if(mysqli_num_rows($res) > 0){ 
		echo "<table>"; 
		while($row = mysqli_fetch_array($res)){ 
			echo "<tr>"; 
			echo '<td><img width="400" height="200" src=" ' . $row['imageSRCs'] . '" /></td>';
      echo "<td>" . $row['names'] . "<br>" . $row['locations'] . "<br>" . $row['prices'] . "<br>" . $row['details'] . "<br><a href='" . $row['booklinks'] . "' target='_blank'>test</a></td>"; 
			echo "</tr>"; 
		} 
		echo "</table>"; 
		mysqli_free_result($res); 
	} else{ 
		echo "No matching records are found."; 
	} 
} else{ 
	echo "ERROR: Could not able to execute $sql. " 
								. mysqli_error($link); 
} 
mysqli_close($link);

?>

    </header>

    <script>
  
  const sort = () => {
    var loc = document.getElementById('location').value
    console.log(loc)
    location.href = 'sort.php?loc=' + loc
  }
</script>

<script>
  
  const sort2 = () => {
    var loc2 = document.getElementById('location').value
    console.log(loc2)
    location.href = 'sort2.php?loc2=' + loc2
  }
</script>

    <footer class="foot">
      <h3>FYP Project, Tiara binti Mohd Nazri &copy; 2017700023</h3>
    </footer>
    </body>
    </html>