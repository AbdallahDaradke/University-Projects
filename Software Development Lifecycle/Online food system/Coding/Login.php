<?php
$username=$_POST['username'];
$password=$_POST['password'];
$con = new mysqli("localhost","root","","signup");
if($con->connect_error){
    die("Failed to connect :".$con->connect_error);
}else{
    $stmt = $con->prepare("select * from signup where username = ?");
    $stmt->bind_param("s",$username);
    stmt->execute();
    $stmt_result = $stmt->get_result();
    if($stmt_result->num_rows > 0){
        $data=$stmt_result->fetch_assoc();
        if($data['password'] === $password) {
            echo "<h2>Login successfully</h2>";

        }else {
            echo "<h2>Invalid username or password</h2>";

        }
    }else{
        echo "<h2>Invalid username or password</h2>";

    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Saj Login page</title>
</head>
<body>
    <form action="Login.php" method="post">
        <input type="text" required placeholder="usernamel">
        <input type="text" required placeholder="passwordl">
        <button type="button">login</button>
    </form>
    <a href="Homepage.php">Login</a>

    <a href="Signup.php">sign up</a>
</body>
</html>