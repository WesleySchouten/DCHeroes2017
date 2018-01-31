<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "dc-heroes";

//create connection
$conn = new mysqli($servername, $username, $password, $dbname);


//check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$hero = $_POST['heroId'];
$team = $_POST['teamId'];
$rating = $_POST['rating'];
$review = $_POST['review'];
$date  = time();
$timestamp = strtotime($date);
$sql5 =  "INSERT INTO rating (heroId, rating, ratingDate, ratingReview) VALUES ('$hero', '$rating','$date', '$review')";
if ($conn->query($sql5) === true) {
    echo "";
} else {
    echo "Error: " . $sql5 . "<br>" . $conn->error;
    die();
}
header("refresh:2; url=GameOfThrones.php?teamId=$team&heroId=$hero");
?>

<html>
<div>
  <h1>Thank You for Reviewing!</h1>
</div>
</body>
</html>
