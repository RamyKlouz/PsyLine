<!doctype html>
<html>

<head>
<title>Online Forum Project DSW</title>
<link href="./style.css" rel="stylesheet">
</head>

<body>
<h1>Notre forum de psychologie</h1>
  <div id="wrapper">
  <div id="menu">
      <a class="item" href="index.php"> Accueil </a>
      <a class="item" href="create_topic.php">créer un sujet</a>
      <a class="item" href="create_cat.php">Créer une catégorie </a>
    </div>

  <div id="userbar">

  <div id="userbar">
    <?php
    session_start();

      if(isset($_SESSION['signed_in']))
      {
          echo 'Salut ' . $_SESSION['user_name'] . '!pas toi? <a href="signout.php">Déconnexion</a>';
      }
      else
      {
          echo '<a href="signin.php">se connecter</a> or <a href="signup.php">créer un compte</a>.';
      }
      ?>
  </div>
  </div>

  <div id="content">
