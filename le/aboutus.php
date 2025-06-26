<?php
require 'classes/db1.php';
$about = mysqli_query($conn,"SELECT * FROM about_us");
?>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Loyo Events</title>
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
</head>
<style>

/* Large rounded green border */
hr.blueline {
  border: 10px solid #dfab1a;
  border-radius: 5px;
}
#bj
{
  font-size: 22px;
  text-indent: 20px;
}
</style>

<body style="background-color:#f9e18f">

  <?php require 'utils/header.php'; ?>
  <hr class="blueline">
  <div class="col-md-12">
  
<h1>About Us</h1>

<p id="bj">Loyola College is a private Institute which was established in 2009. The institution was established with the permission of the Government of Tamil Nadu. The College is affiliated to Thiruvalluvar University, Vellore and it is recognized by UGC as well. The College is a self-financing institute accredited by NAAC. </p>

<p id="bj">Step into the vibrant world of college culturals, where creativity knows no bounds and diversity is celebrated with fervor. Loyo Events is a cultural fest which is held every year, we like everyone to participate cheerfully in every event.</p>

<p id="bj">College games aren't just about winning medals; they're about winning hearts, inspiring dreams, and pushing boundaries.</p>

</div>
<hr class="blueline">
<?php
include 'classes/db1.php';
if ($about->num_rows > 0) {
        while($row = $about->fetch_assoc()) {
            // Step 4: Display the image and description
            echo "<div>";
            echo "<h1>".$row['champ']."</h1>";
            echo "<img src='".$row['img']."' alt='Image'>";
            echo "<p id='bj'>".$row['congrats']."</p>";
            echo "</div>";
        }
    } else {
        echo "0 results";
    }
    $conn->close();
    ?>
 <?php require 'utils/footer.php'; ?>

</html>