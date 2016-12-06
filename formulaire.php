<html>
    <head><title>Calcul Moyenne</title></head>
    <body>
        <h1>Bienvenue sur le site de gestion des notes </h1>
        <h2>Commencez-donc par remplir vos information :</h2>
        <form name="inscription" method="post" action="moyenne.php">
            Entrez votre Nom : <input type="text" name="nom"/> <br/>
            Entrez votre Prenom : <input type="text" name="prenom"/><br/>
            Entrez votre Note : <input type="number" name="note"/><br/>
            Entrez la matiere : <input type="text" name="matiere"/><br/>
            Entrez le coefficient : <input type="number" name="coefficient"/><br/>
            <input type="submit" name="valider" value="Calculez ma moyenne"/>
        </form>
    </body>
</html>