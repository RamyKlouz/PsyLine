<?php
    include '../Model/Utilisateur.php';
    include '../Controller/UtilisateurC.php';

    $error = "";

    // create user
    $user = null;

    // create an instance of the controller
    $userC = new UtilisateurC();
    if (
        isset($_POST["q1"]) && 
        isset($_POST["q2"]) &&
        isset($_POST["q3"]) 
       
    ) {
          
            $user = new Utilisateur(
                $_POST['q1'],
                $_POST['q2'], 
                $_POST['q3'],
                
            );
            $userC->ajouterUtilisateur($user);
            header('Location:afficherUtilisateurs.php');
        }
        else
            $error = "Missing information";
            echo $error;
    

    
?>