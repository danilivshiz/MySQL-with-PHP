
<?php
if (isset($_POST['model'])){
    echo $_POST['model']."<br>";
}

$host = '127.0.0.1';
$db   = 'northwind';
$user = 'root';
$pass = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
$pdo = new PDO($dsn, $user, $pass, $opt);

$stmt = $pdo->query('SELECT * FROM l40_screens');
echo "<select>";
while ($row = $stmt->fetch())
{
    echo "<option value=".  $row['id'] . ">". $row['manufacturer'] ;
}
echo "<select>";

?>
<html>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <body>
 
    <form action="model.php" method="post">
	  name: <input  type="text" name="model"><br>
	   <input type="submit">
	 </form>
 </body>
</html> 