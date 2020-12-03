<?PHP
	include "../controller/UtilisateurC.php";

	$utilisateurC=new UtilisateurC();
	$listeUsers=$utilisateurC->afficherUtilisateurs();

?>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title> Afficher Liste Utilisateurs </title>
    </head>
    <body>
		<button><a href="diagnostic.html">Ajouter un Utilisateur</a></button>
		<hr>
		<table border=1 align = 'center'>
			<tr>
				<th>Id</th>
				<th>q1</th>
				<th>q2</th>
				<th>q3</th>
				
			</tr>

			<?PHP
				foreach($listeUsers as $user){
			?>
				<tr>
					<td><?PHP echo $user['Id']; ?></td>
					<td><?PHP echo $user['q1']; ?></td>
					<td><?PHP echo $user['q2']; ?></td>
					<td><?PHP echo $user['q3']; ?></td>
				</tr>
			<?PHP
				}
			?>
		</table>
	</body>
</html>
