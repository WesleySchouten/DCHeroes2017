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
?>
<!DOCTYPE html>
    <meta charset="utf-8">
    <meta name="description" content="Game of thrones. - Enjoy The Greatest People">
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <title>Game Of thrones</title>
  </head>
  <header>
    <img src="images/gotbanner.png" width="100%" height="200px">
      </header>
  <body>
  <div id="team">
    <div class="houses">

      <?php
$sql    = "SELECT * FROM team";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    //output data of each row

    while ($row = $result->fetch_assoc()) {
?>
         <a href="GameOfThrones.php?teamid=<?php
        echo $row['teamId'];
?>">
       <img src= <?php
        echo $row['teamImage'];
?>></a>
  <?php
    }
}
?>
</div>
</div>

  <div id="family">
      <?php
if (isset($_GET['teamid'])) {
    $tmi = $_GET['teamid'];
    $sql = "SELECT * from hero where teamId=$tmi";
  } else { $sql = "SELECT * from hero where teamId=1";}
 ?>

      <?php
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    //output data of each row
    while ($row = $result->fetch_assoc()) {
?>
      <div class="container">
         <div id="imghero"><img src= <?php echo $row['heroImage'];?> >         <a href="GameOfThrones.php?teamid=<?php
                 echo $row['teamId'];  ?>&heroId=<?php echo $row['heroId']; ?>
         "><h1 id="rm">Read More</h1></a>

         <div class="name">
           <?php
             echo $row['heroName'];
           ?>
         </div>

       </div>

          </div>
<?php
  }

} else { ?>
<div class="error"><?php echo "<h3>Please select an house</h3>"; ?></div><?php
}


?>



</div>
<div id="attributes">
  <?php
if (isset($_GET['heroId'])) {
  $hei = $_GET['heroId'];
  $getHeroInfo =  "SELECT * from hero where heroId=$hei";



$resultGetHero = $conn->query($getHeroInfo);
if ($resultGetHero->num_rows > 0) {
//output data of each row

while ($row = $resultGetHero->fetch_assoc()) {
?>
<div class="heroinf">
<img src=<?php echo $row['heroImage']; ?>>
</div>
<div class="herodesc">
<?php echo $row['heroDescription']; ?>
</br>
</br>
</br>
<div class="heroatt">
<?php echo $row['heroAtt']; ?>
</div>
</br>
</br>
<h3>Rate your Hero</h3>
<div class="rating">


      <form action="insert.php?heroId=<?php echo $row['heroId']; ?>" method="POST" class="form-rate">
        <div class="rate">
          <input required type="radio" id="rating10" name="rating" value="5" /><label class="lblRating" for="rating10" title="5 stars"></label>
          <input type="radio" id="rating9" name="rating" value="4.5" /><label class="lblRating half" for="rating9" title="4 1/2 stars"></label>
          <input type="radio" id="rating8" name="rating" value="4" /><label class="lblRating" for="rating8" title="4 stars"></label>
          <input type="radio" id="rating7" name="rating" value="3.5" /><label class="lblRating half" for="rating7" title="3 1/2 stars"></label>
          <input type="radio" id="rating6" name="rating" value="3" /><label class="lblRating" for="rating6" title="3 stars"></label>
          <input type="radio" id="rating5" name="rating" value="2.5" /><label class="lblRating half" for="rating5" title="2 1/2 stars"></label>
          <input type="radio" id="rating4" name="rating" value="2" /><label class="lblRating" for="rating4" title="2 stars"></label>
          <input type="radio" id="rating3" name="rating" value="1.5" /><label class="lblRating half" for="rating3" title="1 1/2 stars"></label>
          <input type="radio" id="rating2" name="rating" value="1" /><label class="lblRating" for="rating2" title="1 star"></label>
          <input type="radio" id="rating1" name="rating" value="0.5" /><label class="lblRating half" for="rating1" title="1/2 star"></label>
          <input type="radio" id="rating0" name="rating" value="0" /><label class="lblRating" for="rating0" title="No star"></label>
        </div>
                  <textarea class="formMessage" name="review" placeholder="Please write a review for the hero" required></textarea>
                </div>
                <div class="rate-submit">
                    </br>
                  <input class="submit-btn" type="submit" name="submitRating" value="Rate Hero" required/>
                  <input type="hidden" name="heroId" value="<?php echo $row['heroId']; ?>" required/>
                  <input type="hidden" name="teamId" value="<?php echo $row['teamId']; ?>" required/>
                </div>
              </form>







  </div>



<?php  }

  }

} else { ?>
<div class="error"><?php echo "<h2>Please select an hero</h2>"; ?></div><?php
}


?>
</div>

  </body>
  </html>
