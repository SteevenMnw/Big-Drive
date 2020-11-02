<?php
session_start();
require('../ConnexionBDD.php');

if(isset($_POST["utilisateur"]) && isset($_POST["mdp"]))
{
    $req = $bdd->prepare('SELECT * FROM utilisateur WHERE identifiant = ? and mdp = ?');
    $req->execute(array($_POST['utilisateur'], $_POST['mdp']));
    $tableau = $req->fetch();
    
    if ($tableau != '')
    {
        if ($tableau['statut'] == "C")
        {
            $_SESSION['matricule'] = $tableau['matricule'];
            $_SESSION['statut'] = "client";
        }

        else if ($tableau['statut'] == "A")
        {
            $_SESSION['matricule'] = $tableau['matricule'];
            $_SESSION['statut'] = "administrateur";
        }
        else if ($tableau['statut'] == "L")
        {
            $_SESSION['matricule'] = $tableau['matricule'];
            $_SESSION['statut'] = "livreur";
        }
        else if ($tableau['statut'] == "P")
        {
            $_SESSION['matricule'] = $tableau['matricule'];
            $_SESSION['statut'] = "preparateur";
        }
        echo $tableau['statut'];
    }
}
?>