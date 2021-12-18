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
                <div class="student-sign-up roboto-normal-white-72px">Language Tests</div>
            </div>
            <div class="overlap-group roboto-normal-black-24px">
            <form action = "language_tests.php" method = "post">
                <label for="name">Choose a Test Type:</label>
                <select name="test_type" id="l_types">
                    <option value="ielts">IELTS</option>
                    <option value="l_toefl">Language TOEFL</option>
                    <option value="cae">CAE</option>
                    <option value="cpe">CPE</option>
                </select>
                <div class="country">Test Ranking : <input type="number" placeholder="Enter the rank" name="t_rank"
                        required></div>
                <div class="email-id">Mean Score : <input type="number" placeholder="Enter number here" name="mean_score" required></div>
                <br><br>
                <input type="submit" value="Submit">
                </form>

                <p>Click the "Submit" button to submit your data.</p>
            </div>
            <?php
                $type = $_POST['test_type'];
                $rank = $_POST['t_rank'];
                $mean = $_POST['mean_score'];
                //Sending form data to sql db.
                if (mysqli_connect_errno()){
                    echo "<script>alert('Connection_Failed');</script>";
                }
                else{
                    mysqli_query($connect,"INSERT INTO Language_Tests (Type_of_Test, Test_ranking, mean_test_score) VALUES ('$type', $rank, $mean);");
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