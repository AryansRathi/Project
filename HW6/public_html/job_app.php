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
        <div class="student-sign-up roboto-normal-white-72px">Job Application</div>
      </div>
      <div class="overlap-group roboto-normal-black-24px">
        <form action="job_app.php" method="post">
        <div class="name">Year : <input type="number" placeholder="Year of Application" name="year" required></div>
        <div class="country">Teaching Experience : <input type="number" placeholder="In years" name="teach_exp"
            required></div>
        <div class="university-name">Previous Research : <input type="text" placeholder="Enter the text here"
            name="prev_research" required></div>
        <div class="email-id">Department : <input type="text" placeholder="Enter the text here" name="department"
            required></div>
        <br><br>
        <input type="submit" value="Submit">
        </form>

        <p>Click the "Submit" button to submit your data.</p>
      </div>

      <?php
              $year = $_POST['year'];
              $teach_exp = $_POST['teach_exp'];
              $prev_research = $_POST['prev_research'];
              $department = $_POST['department'];
              //Sending form data to sql db.
              if($connect->connect_error){
                  echo "<script>alert('Connection_Failed');</script>";
              }
              else{
                  mysqli_query($connect,"INSERT INTO Job_application (Year_, teaching_experience, Prev_research, Department) VALUES ('$year', '$teach_exp', '$prev_research', '$department');");
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


