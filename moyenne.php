<?php
    $pdo = new PDO('mysql:host=localhost;dbname=gestion des notes', 'root', '');
    $verifEleve = $pdo -> query("Select lv_nom, lv_prenom from eleve where lv_nom ='".$_POST['nom']."' and lv_prenom = '".$_POST['prenom']."'");
    // Verification si l'eleve existe deja dans la bdd
    $verifExistEleve = $verifEleve-> fetch();
    if(empty($verifExistEleve))
        $insertNewEleve = $pdo -> query("Insert into eleve(lv_nom,lv_prenom) VALUES('".$_POST['nom']."','".$_POST['prenom']."')");
    //Creation de l'eleve si il n'existe pas
    $verifMatiere =$pdo -> query("Select mtr_name from matiere where mtr_name ='".$_POST['matiere']."'");
    $verifExistMatiere = $verifMatiere -> fetch();
    //Verification si la matiere existe
    if(empty($verifExistMatiere))
        $insertNewMat = $pdo -> query("Insert into matiere(mtr_name) VALUES('".$_POST['matiere']."')");
    //Creation de la matiere si elle n'existe pas
    $insertNote = $pdo -> query("Insert into note(nt_lv_id,nt_mtr_id,nt_note,nt_coeff) Values((Select lv_id from eleve where lv_nom = '".$_POST['nom'] ."' and lv_prenom = '".$_POST['prenom']."'), (Select mtr_id from matiere where mtr_name = '".$_POST['matiere']."'), '".$_POST['note']."','".$_POST['coefficient']."')");
    // insertion de la note dans la base de donnée
    $MoyenneMatiere = $pdo-> query("Select Sum(nt_coeff) as total from note inner join matiere on nt_mtr_id = mtr_id inner join eleve on nt_lv_id = lv_id where mtr_name= '".$_POST['matiere']."' and lv_nom = '".$_POST['nom']."'");
    $resultatReq = $MoyenneMatiere -> fetch();
    $tableauNote = $pdo-> query("select nt_note, nt_coeff from note inner join matiere on nt_mtr_id = mtr_id inner join eleve on nt_lv_id = lv_id where mtr_name= '".$_POST['matiere']."' and lv_nom = '".$_POST['nom']."'");
    $Moyenne = 0;
    while($note = $tableauNote-> fetch())
    {
        $Moyenne += $note['nt_coeff'] * $note['nt_note'];
    }
    $Moyenne /= $resultatReq['total'];
    echo "Bonjour ". $_POST['prenom']." ". $_POST['nom']." votre moyenne de ". $_POST['matiere']." est de : ".number_format($Moyenne, 2);