<html>
<head>
	<meta charset="UTF-8">
	<title>Wasserwerke Eingabe Zählerstand</title>
	<h1><link rel="stylesheet" type="text/css" href="style.css"></h1>
</head>
<body>

<style>
body{
  background-image: url("images/dark.jpg");
}
</style>

    <form action="processZae.php" method="post">
          </br>
            Bitte geben sie nocheinmal ihre Zählernummer an:<input type="text" name="zaehlernummer"></br>
            Bitte geben sie den Zählerstand ein:<input type="text" name="zaehlerstand">
            <input type="submit" value="Bestätigen!"/>
            </br>


            <a href="login.php">Logout</a>
            <a href="auswahl.php">Home</a>
            
    </form>
	
</body>
	
</html>