<?php
include('connection.php');
if(isset($_POST))
{
 $name=$_POST["name"];
 $p=$_POST["phone"];

 $email=$_POST["email"];
 $address=$_POST["address"];
 $city=$_POST["city"];
 $state=$_POST["state"];
 $zip=$_POST["zip"];
 $country=$_POST["city"];
 $rt=$_POST["room_type"];
 $o=$_POST["Occupancy"];
 $cd=$_POST["cdate"];
 $ct=$_POST["ctime"];
 $co=$_POST["codate"];

  $sql="insert into room_booking_details(name,email,phone,address,city,state,zip,contry,room_type,Occupancy,check_in_date,check_in_time,check_out_date)"." 
  values('$name','$email','$p','$address','$city','$state','$zip','$country','$rt','$o','$cd','$ct','$co')";
   if(mysqli_query($con,$sql)){
    echo "updated successfully";
   }
}
?>
   

<html>
<head>
<title>
Payment Page
</title>
<style>
body
{
background-color:grey;
background-image:url("money.jpg");
}
</style>
</head>
<body>
<h2>Welcome to payment Page</h2>
<form action="payment_done.html" method="post">
<table>
<tr><td><b>Enter card name:</b></td><td><input type="text"/>
</td></tr>
<tr><td>
<b>Enter Account Details:</b></td>
<td><input name="i1" type="number"/></td></tr>
<br><tr><td>
<b>Enter CVV:</b></td><td><input type="number"/>
</td></tr>
<br>
<tr><td>
<tr><td><b>Enter Exp Month:</b></td><td><input type="number"/>
</td></tr>
<tr><td><b>Enter Exp Year:</b></td><td><input type="number"/>
</td></tr>
<tr><td>
&nbsp&nbsp<center><input type="submit"/><center>
</td></tr>
</table>
</form>
</body>
</html>