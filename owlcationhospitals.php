<!DOCTYPE html>
<html>
<head>
<title>Donors Search</title>
<style>
table {
border-collapse: collapse;
width: 80%;
color: #2f3947;
font-family: monospace;
font-size: 25px;
text-align: left;
}
th {
background-color: #2f3947;
color: white;
}
tr:nth-child(even) {background-color: #f2f2f2}
.fname{
column-width: 5px
}
.bgroup{
column-width: 10px
}

.lname{
column-width: 5px
}

.mphone{
column-width: 10px
}
.no{
color: #2f3947;
}
</style>
</head>
<body>
<table>
<tr>
<th class="no">No</th>
<th class="fname">First Name</th>
<th class="lname">Last Name</th>
<th class="bgroup">Blood group</th>
<th class="mphone">Phone Number</th>
</tr>
 <?php

   $db_host="localhost";
   $db_user="root";
   $db_pass="";
   $db_name="phplogin";

    $db = new mysqli($db_host, $db_user, $db_pass, $db_name);
    
    if($db->connect_error){
       die("Connection failed: " . $db->connect_error);
    }


if(!empty($_POST))
{
      $aKeyword = explode(" ", $_POST['keyword']);
      $query ="SELECT firstname, lastname, bloodgroup, phone FROM accounts WHERE location like '%" . $aKeyword[0] . "%'";
     
     for($i = 1; $i < count($aKeyword); $i++) {
		if(!empty($aKeyword[$i])) {
			$query .= " OR location like '%" . $aKeyword[$i] . "%'";
		}
      }
    
     $result = $db->query($query);
     echo "<br>Donors in: " . $_POST['keyword'];
					
     if(mysqli_num_rows($result) > 0) {
		$row_count=0;
		echo "<br>Result Found: ";
		echo "<br><table border='2'>";
		While($row = $result->fetch_assoc()) {   
			$row_count++;						  
			echo "<tr><td>"   .$row_count.  "</td><td>"  .$row['firstname'].  "</td><td>"  .$row['lastname']. "</td><td>"   .$row['bloodgroup'].  "</td><td>"  .$row['phone'].  "</td></tr>";
		}
		echo "</table>";
    }
    else {
		echo "<br>Result Found: NONE";
    }
}

?>
</table>
</body>
</html>