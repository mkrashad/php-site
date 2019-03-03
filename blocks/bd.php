<!--// $db = mysql_connect("localhost","id8332451_php","123456789");-->
<!--// mysql_set_charset("utf8");-->
<!--// mysql_select_db("id8332451_phpsite",$db);-->
<!--// -->
<?php
$db = mysqli_connect("localhost","id8332451_php","123456789");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
// ...some PHP code for database "my_db"...

// Change database to "test"
mysqli_select_db($db,"id8332451_phpsite");

?>