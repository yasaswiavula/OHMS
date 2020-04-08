<?php 
include('../connection.php');
$oid=$_GET['user_id'];
$q=mysqli_query($con,"delete from  create_account where id='$oid' ");
include "canceluser.html";
?>