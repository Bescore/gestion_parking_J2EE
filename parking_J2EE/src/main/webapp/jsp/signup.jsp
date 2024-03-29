<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<title>Nous rejoindre</title>


<!-- Header -->
<header class="ex-header">
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h1 class="text-center">S'inscrire</h1>
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</header>
<!-- end of ex-header -->
<!-- end of header -->


<c:if test="${inscrit==1}">
	<div class="container" id="inscrit">
		<div class="alert alert-success text-center my-2 p-0">
			<strong>Success!</strong> Vous êtes inscrit
		</div>
	</div>
</c:if>
<c:if test="${erreur_inscription==1}">
	<div class="container ">
		<div class="alert alert-danger text-center my-2 p-0">
			<strong>Echec !</strong> données incorrecte ou email existant.
		</div>
	</div>
</c:if>

<!-- Sign Up Form -->
<form method="post">
	<!-- Basic -->
	<div class="ex-form-1 pt-0 pb-0">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 ">
					<div class="text-box mt-5 mb-5">
						<p class="mb-4">
							Remplissez le formulaire pour profiter du service. Déjà inscrit ?
							Alors <a class="blue" href='<c:url value="/Login"></c:url>'>Connectez-vous</a>
						</p>


						<div class="mb-4 form-floating">
							<input type="email" class="form-control" name="email"
								data-placement="top" title="exemple: parkfast@parfast.com"
								placeholder="name@example.com"> <label
								for="floatingInput">Email </label>
						</div>
						<div class="mb-4 form-floating">
							<input type="text" class="form-control" name="nom"
								data-placement="top"
								title="expression régulière, espace, tirets autorisé"
								placeholder="nom"> <label for="floatingInput">nom</label>
						</div>
						<div class="mb-4 form-floating">
							<input type="text" class="form-control" name="prenom"
								data-toggle="tooltip" data-placement="top"
								title="expression régulière, espace, tirets autorisé"
								placeholder="prenom"> <label for="floatingInput3">prenom</label>
						</div>
						<div class="mb-4 form-floating">
							<input type="password" class="form-control" name="password"
								placeholder="mot de passe" data-toggle="tooltip"
								data-placement="top"
								title="8-20 , caractère , majuscule , minuscule , caractère spéciale , chiffre de 0-9">
							<label for="floatingPassword">Mot de passe</label>
						</div>

					</div>
					<!-- end of text-box -->
				</div>

				<!-- end of col -->
				<div class="col-xl-6 ">
					<div class="text-box mt-5 mb-5">
						<p class="mb-4 text-center">Votre Véhicule</p>
						<br>
						<div class="mb-4 form-floating">
							<input type="text" class="form-control" name="marque"
								data-toggle="tooltip" data-placement="top"
								title="expression régulière, espace, tirets autorisé"
								placeholder="marque"> <label for="floatingInput3">marque
								de votre voiture</label>
						</div>
						<div class="mb-4 form-floating">
							<input type="text" class="form-control" name="modele"
								data-toggle="tooltip" data-placement="top"
								title="expression régulière, espace, tirets , chiffres de 0 à 9 autorisé"
								placeholder="modele"> <label for="floatingInput3">modèle
								de votre voiture</label>
						</div>
						<div class="mb-4 form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1" required> <label
								class="form-check-label" for="exampleCheck1">Je suis
								d'accord avec la <a href="privacy.html">politique de
									confidentialité</a> et <a href="terms.html">les conditions
									d'utilisation</a>
							</label>
						</div>
						<button type="submit" name="s'inscrire"
							class="form-control-submit-button">S'inscrire</button>
					</div>
				</div>
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container -->
	</div>
	<!-- end of ex-basic-1 -->
	<!-- end of basic -->

</form>
<!-- end of sign up form -->

<c:import url="/Footer"></c:import>