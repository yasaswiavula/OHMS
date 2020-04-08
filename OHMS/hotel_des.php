<?php

$conn = new mysqli("localhost", "root", "", "hotel");
$sql1="select * from hotel_description";

$result1 = $conn->query($sql1);

if ($result1->num_rows > 0) {

echo "<table>";

while($row = $result1->fetch_assoc()) {

echo "<tr>";
$path=$row["image"];
echo "<td>";
echo "<img src='$path' height='150' width='150' />"; echo "</td>";
echo "<td width='100'></td>";
echo "<td>"; echo "</td>"; echo "<td width='400'> <b>"; echo $row["name"];echo "<br></b>"; echo $row["description"];  echo "</td>";
echo "<td width='100'></td>";
echo "<td width='400'>" ; echo $row["address"];  echo "</td>";
echo "<td width='300'>" ; echo $row["nearplaces"];  echo "</td>";
echo "<td width='100'>"; echo "</td>";



echo "</tr>";



}
echo "</table>";
}
else{
 echo "No Items";
}
echo "<form action='Booking Form.php'>";
echo "<center><button>Book</button></center>";
echo  "</form>";
$conn->close();


?>

<html>
<head>
<style>
body{
 background-color:pink;
 background-image:url("back.jpg");
}
</style>
</head>
<body>
</body>
</html>