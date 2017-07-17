<?php
$host = '127.0.0.1';
$db   = 'test';
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
    echo $row['name'] . "\n";
}
echo "<select>";
// Prevent SQL Injection
$stmt = $pdo->prepare('SELECT * FROM users WHERE email = :email AND status=:status');
$stmt->execute(['email' => $email, 'status' => $status]);
while ($row = $stmt->fetch())
{
    echo $row['name'] . "\n";
}

//select with foreach
$stmt = $pdo->query('SELECT name FROM users');
foreach ($stmt as $row)
{
    echo $row['name'] . "\n";
}

// Insert 
$statement = $pdo->prepare("INSERT INTO testtable(name, lastname, age)
    VALUES(:fname, :sname, :age)");
$statement->execute(array(
    "fname" => "Bob",
    "sname" => "Desaunois",
    "age" => "18"
));
?>
<html>

 <body>
 
    <form action="index.php" method="post">
	  name: <input type="text" name="model"><br>
	   <input type="submit">
	 </form>
 </body>
</html> 