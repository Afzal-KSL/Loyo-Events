<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loyo Events</title>
        <link rel="icon" type="image/x-icon" href="images/favicon.ico">
        <?php require 'utils/styles.php'; ?><!--css links. file found in utils folder-->
        
    </head>
    <body>
    <?php require 'utils/header.php'; ?>
    <div class ="content"><!--body content holder-->
            <div class = "container">
                <div class ="col-md-6 col-md-offset-3">
    <form method="POST">

   
        <label>Student USN:</label><br>
        <input type="text" name="usn" class="form-control" required><br><br>

        <label>Student Name:</label><br>
        <input type="text" name="name" class="form-control" required><br><br>

        <label>Branch:</label><br>
        <input type="text" name="branch" class="form-control" required><br><br>

        <label>Semester:</label><br>
        <input type="text" name="sem" class="form-control" required><br><br>

        <label>Email:</label><br>
        <input type="text" name="email"  class="form-control" required ><br><br>

        <label>Phone:</label><br>
        <input type="text" name="phone"  class="form-control" required><br><br>

        <label>College:</label><br>
        <input type="text" name="college"  class="form-control" required><br><br>

        <label>Type ID:</label><br>
        <input type="text" name="rid"  class="form-control" required><br><br>

        <label>Event ID:</label><br>
        <input type="text" name="event_id"  class="form-control" required><br><br>

        <button type="submit" name="update" required>Submit</button><br><br>
        <a href="usn.php" ><u>Already registered ?</u></a>

    </div>
    </div>
    </div>
    </form>
    

    <?php require 'utils/footer.php'; ?>
    </body>
</html>

<?php

    if (isset($_POST['update']))
    {
        $usn=$_POST['usn'];
        $name=$_POST['name'];
        $branch=$_POST['branch'];
        $sem=$_POST['sem'];
        $email=$_POST['email'];
        $phone=$_POST['phone'];
        $college=$_POST['college'];
        $rid=$_POST['rid'];
        $event_id=$_POST['event_id'];


        if( !empty($usn) || !empty($name) || !empty($branch) || !empty($sem) || !empty($email) || !empty($phone) || !empty($college) || !empty($rid) || !empty($event_id) )
        {
        
            include 'classes/db1.php';          
                $sql_participent = "INSERT INTO participent (usn, name, branch, sem, email, phone, college, rid, event_id) 
                        VALUES ('$usn', '$name', '$branch', $sem, '$email', '$phone', '$college', '$rid', '$event_id')";

                // Second INSERT query for registered table
                $sql_registered = "INSERT INTO registered (rid, usn, event_id) 
                        VALUES ('$rid', '$usn', '$event_id')";

                // Perform the first INSERT
                if ($conn->query($sql_participent) === TRUE) {
                    // If the first INSERT is successful, perform the second INSERT
                    if ($conn->query($sql_registered) === TRUE) {
                        echo "<script>
                                alert('Registered Successfully!');
                                window.location.href='usn.php';
                                </script>";
                    } else {
                        echo "<script>
                                alert('Error registering to the event. Please try again later.');
                                window.location.href='usn.php';
                                </script>";
                    }
                } else {
                    echo "<script>
                            alert('Error registering participant.');
                            window.location.href='usn.php';
                            </script>";
                }
                $conn->close();
            
        }
        else
        {
            echo"<script>
            alert('All fields are required');
            window.location.href='register.php';
                    </script>";
        }
    }
    
?>