<?php session_start();?>

<head>
	<title>Site humanitaire</title>
	<link rel="stylesheet" media="screen" type="text/css" title="style" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset="UTF-8" />
</head>


<section  id="head">
	
	<img src="Image/ESIEE.png" alt="Logo de l ESIEE" class="logo" />

	<div class="titre">
		Projet I3
	</div>
	
	<div class="login">
		<input type="submit" name="recherche" value="Rechercher" class="button"/>
	</div>
	
	
<?php

//try
//{
//	$bdd = new PDO('mysql:host=localhost;dbname=u968345835_huma','root','');
//}
//catch (Exception $e)
//{
//	die('erreur : ' . $e->getMessage());
//}
//if(isset($_SESSION['login']))
//{
//	echo '<form method="post" action="verif.php">
//		<p>'.$_SESSION['login'].' : <input type="submit" name="deco" value="Déconnection"/></p>
//	</form>';
//}
//else
//{
//	echo '<form method="post" action="verif.php">
//		<p>Identifiant : <input type="text" name="login"/></p>
//		<p>Mot de passe : <input type="password" name="mdp"/></p>
//		<p><input type="submit" name="connect" value="Connection" class="button"/></p>
//	</form>';
//}
?>
</section>