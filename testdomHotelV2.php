<?php
include ("simple_html_dom.php");

$localhost = "localhost";
$username = "root";
$password = "";
$dbname = "pawtel";
$con = new mysqli($localhost, $username, $password, $dbname);

// Create connection
// $conn = mysqli_connect($servername, $username, $password, $dbname);
// // Check connection
// if (!$conn) {
//     die("Connection failed: " . mysqli_connect_error());
// }

// Create DOM from URL
$html=file_get_html("https://www.bringfido.com/lodging/country/malaysia/");
$names=$html->find("a[itemprop='url']");
$locations=$html->find("div[class='subtitle']");
$prices=$html->find("div[class='amount']");
$imageSRCs=$html->find("img[onload='window.photoLoaded(this);']");
$details=$html->find("div[class='pet-fee']");


$i=0;
if($names)
{
	foreach($names as $name[$i])
	{
		echo $name[$i]->plaintext."<br>";
		$i++;
	}
}
else
	echo "Name: Undefined<br>";

$i=0;
if($locations)
{
	foreach($locations as $location[$i])
	{
		echo "Location: ".$location[$i]->plaintext."<br>";
		$i++;
	}
}
else
	echo "Location: Undefined<br>";

$i=0;
if($prices)
{
	foreach($prices as $price[$i])
	{
		echo "Price: ".$price[$i]->plaintext."<br>";
		$i++;
	}
}
else
	echo "Price: Undefined<br>";


//one name has 3 details
$j=0;
if($details)
{
	foreach($details as $detail[$j])
	{
		echo "Pet details: ".$detail[$j]->plaintext."<br>";
		$j++;
	}
}
else
	echo "Details: Undefined<br>";

/*diplay images using src*/
$i=0;
if($imageSRCs)
{
	foreach($imageSRCs as $imageSRC[$i])
	{
		echo '<img src="'.$imageSRC[$i]->getAttribute('data-src2x').'" />';
		$i++;
	}
}
else
	echo "imageSRC: Undefined<br>";



	$i--;
	$j--;
	
	while($i>=0) {

		//nama panjang yang ada link
		// $nametest = $name[$i];

		//nama pendek 
		$nametest = $name[$i]->plaintext;
		$locationtest = $location[$i]->plaintext;
		$pricetest = $price[$i]->plaintext;
		$imageSRCtest = $imageSRC[$i]->getAttribute('data-src2x');
		
		$n=3;
		while($n!=0){
			$detailtest = $detail[$j]->plaintext;
			$sql = "INSERT INTO dom (names, locations, prices, imageSRCs, details) VALUES ('$nametest', '$locationtest', '$pricetest', '$imageSRCtest', '$detailtest')";
			$con->query($sql);
			$n--;
			$j--;
		}
		

		// $sql = "INSERT INTO dom (names, locations, prices, imageSRCs, details) VALUES ('$nametest', '$locationtest', '$pricetest', '$imageSRCtest', '$detailtest')";
		// if($con->query($sql)===TRUE)
		// {
		// 	echo "New record created";		
		// }
		// else
		// {
		// 	echo "<br>";
		// 	echo "Error:".$sql."<br>".$con->error;
		// 	echo "<br>";
		// }
		// mysqli_query($con,$sql);
		$i--;
	   }
	   $con->close();
// mysqli_close($conn);
?>


