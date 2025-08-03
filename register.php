<?php
    include('connection.php'); // Ensure connection to the database

    $username = $_POST['user'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password2 = $_POST['password2'];

    // Basic validation: check if passwords match
    if($password === $password2) {
        // Hash the password
        $password = md5($password);

        // Check if the email already exists in the database
        $checkEmail = "SELECT * FROM signup WHERE email = '$email'";
        $result = $conn->query($checkEmail);

        if($result->num_rows > 0) {
            echo "Email Address Already Exists!";
        } else {
            // Insert new user into the signup table
            $insertQuery = "INSERT INTO signup (username, email, password) VALUES ('$username', '$email', '$password')";
            if($conn->query($insertQuery) === TRUE) {
                // Redirect to home page after successful registration
                echo "<script>alert('test msg')</script>";
                //header("location: home.html");
            } else {
                echo "Error: " . $conn->error;
            }
        }
    } else {
        echo "Passwords do not match!";
    }


// contact
if(isset($_POST['contactUs'])) {
    $fullName = $_POST['name'];
    $email = $_POST['email'];
    $phoneNumber = $_POST['phone'];
    

    // Basic validation: check if passwords match
    if() {
        // Check if the email already exists in the database
        $checkEmail = "SELECT * FROM contact WHERE email = '$email'";
        $result = $conn->query($checkEmail);

        if($result->num_rows > 0) {
            echo "Email Address Already Exists!";
        } else {
            // Insert new user into the signup table
            $insertQuery = "INSERT INTO contact (fullName, email, phoneNumber) VALUES ('$fullName', '$email', '$phoneNumber')";
            if($conn->query($insertQuery) === TRUE) {
                // Redirect to home page after successful registration
                header("location: home.html");
            } else {
                echo "Error: " . $conn->error;
            }
        }
    } else {
        echo "Passwords do not match!";
    }
}
?>
