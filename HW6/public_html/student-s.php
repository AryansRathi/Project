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
        <div class="overlap-group1"><div class="student-sign-up roboto-normal-white-72px">Student Form</div></div>
        <div class="overlap-group roboto-normal-black-24px">

          <form action = "student-s.php" method = "post">
            <div class="name">Name : <input type="text"  placeholder="Enter full name" name="full_name" required ></div>
            <div class="country">Country : <input type="text" placeholder="Country Name" name="country_name" required></div>
            <div class="university-name">University Name : <input type="text" placeholder="Enter Uni name" name="university_name" required></div>
            <div class="email-id">Current Bachlor's Program: <input type="text"  placeholder="Enter program" name="program" required ></div>
            <br><br>
            <input type="submit" value="Submit">

          </form>

          <p>Click the "Submit" button to submit your data.</p>
          <?php
              $name = $_POST['full_name'];
              $country = $_POST['country'];
              $uni = $_POST['university_name'];
              $program = $_POST['program'];
              //Connecting to sql db.
              //Sending form data to sql db.
              if($connect->connect_error){
                  echo "<script>alert('Connection_Failed');</script>";
              }
              else{
                  mysqli_query($connect,"INSERT INTO student_details (Student_Name, Country, Uni_Applied_to, MS_OR_PHD) VALUES ('$name', '$country', '$uni', '$program');");
                  echo "<script>alert('Success!');</script>";
              }
              
          ?>
         </div>
         
        <div class="overlap-group2">
          <div class="rectangle-14"></div>
        </div>
      </div>
    </div>
  </body>
</html>



