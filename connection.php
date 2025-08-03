<?php
$hostname="127.0.0.1";
$username="root";
$password="";
$dbname="data";
$conn=mysqli_connect($hostname,$username,$password,$dbname);
if(!$conn){
    echo"can't make connection to db";
}
?>