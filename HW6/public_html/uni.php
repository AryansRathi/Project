<?php include './connect.php';?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=1440, maximum-scale=1.0" />
  <link rel="shortcut icon" type="image/png" href="https://animaproject.s3.amazonaws.com/home/favicon.png" />
  <meta name="og:type" content="website" />
  <meta name="twitter:card" content="photo" />
  <link rel="stylesheet" type="text/css" href="css/student-s.css" />
  <link rel="stylesheet" type="text/css" href="css/styleguide.css" />
  <link rel="stylesheet" type="text/css" href="css/globals.css" />
  <meta name="author" content="AnimaApp.com - Design to code, Automated." />
</head>

<body style="margin: 0; background: #ffffff">
  <input type="hidden" id="anPageName" name="page" value="student-s" />
  <div class="container-center-horizontal">
    <div class="student-s screen">
      <div class="overlap-group1">
        <div class="student-sign-up roboto-normal-white-72px">University Form</div>
      </div>
      <div class="overlap-group roboto-normal-black-24px">
        <form action="uni.php" method="post">
          <div class="university-name">University Name : <input type="text" placeholder="Enter Uni name" name="uni_name"
              required></div>
          <div class="country">Country : <input type="text" placeholder="Located in" name="country" required></div>
          <br><br><br>
          <div class="name">National Ranking : <input type="number" placeholder="Ranking" name="n_ranking" required>
          </div>
          <div class="email-id">World Ranking : <input type="number" placeholder="Ranking" name="w_ranking" required>
          </div>
          <br><br>
          <input type="submit" value="Submit">
        </form>

        <p>Click the "Submit" button to submit your data.</p>
      </div>

      <?php
              $uni_name = $_POST['uni_name'];
              $country = $_POST['country'];
              $n_rank = $_POST['n_ranking'];
              $w_ranking = $_POST['w_ranking'];
              //Sending form data to sql db.
              if($connect->connect_error){
                  echo "<script>alert('Connection_Failed');</script>";
              }
              else{
                  mysqli_query($connect,"INSERT INTO UNI (Uni_Name, Country, National_R, World_R) VALUES ('$uni_name', '$country', '$n_rank', '$w_ranking');");
                  echo "<script>alert('Success!');</script>";
              }
              
          ?>

      <div class="overlap-group2">
        <div class="rectangle-14"></div>
      </div>
    </div>
  </div>
</body>

</html>