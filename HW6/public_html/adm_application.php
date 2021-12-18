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
        <div class="student-sign-up roboto-normal-white-72px">Admission Application</div>
      </div>
      <div class="overlap-group roboto-normal-black-24px">
        <form action="adm_application.php" method="post">
        <div class="name">Year : <input type="number" placeholder="Enter the year" name="year" required></div>
        <div class="country">Degree applied to : <input type="text" placeholder="Enter the text here" name="d_apply"
            required></div>
        <div class="university-name">Department : <input type="text" placeholder="Enter the text here" name="department"
            required></div>
        <br><br><br>
        <label for="name">Choose degree type:</label>
        <select name="ms_phd" id="type"> //name is here
          <option value="ms">Masters</option>
          <option value="phd">PhD</option>
        </select>
        <br><br>
        <input type="submit" value="Submit">
        </form>

        <p>Click the "Submit" button to submit your data.</p>
      </div>
      <?php
              $year = $_POST['year'];
              $d_apply = $_POST['d_apply'];
              $department = $_POST['department'];
              $ms_phd = $_POST['ms_phd'];
              //Sending form data to sql db.
              if($connect->connect_error){
                  echo "<script>alert('Connection_Failed');</script>";
              }
              else{
                  mysqli_query($connect,"INSERT INTO Admin_application (Year_, Degree_seek, Department, MS_OR_PHD) VALUES ('$year', '$d_apply', '$department', '$ms_phd');");
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
