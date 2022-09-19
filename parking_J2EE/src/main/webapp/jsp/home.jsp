<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Webpage Title -->
<title>Home</title>
<c:import url="/Header"></c:import>

<header id="header" class="header">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="text-container">
					<h1 class="h1-large">
						C'est facile ! <span class="replace-me">Connectez-vous,
							Trouvez une place, Garez-vous !</span>
					</h1>
					<p class="p-large">Le parking Parkfast est idéal pour se garer
						rapidement et facilement. Nous avons des places de parking
						disponibles à prix abordables, ce qui vous permettra de faire des
						économies.</p>
					<a class="btn-solid-lg" href="<c:url value="/Signup"></c:url>">S'inscrire
						gratuitement</a>
				</div>
				<!-- end of text-container -->
			</div>
			<!-- end of col -->
			<div class="col-lg-6">
				<div class="image-container">
					<img class="img-fluid" src="images/parked.svg" alt="kakala">
				</div>
				<!-- end of image-container -->
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</header>
<!-- end of header -->
<!-- end of header -->

<!-- Features -->
<div id="features" class="cards-1">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="h2-heading">
					Parkfast est à votre disposition <span>24h/24h et 7/7 jrs</span>
				</h2>
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
		<div class="row">
			<div class="col-lg-12">

				<!-- Card -->
				<div class="card">
					<div class="card-icon">
						<span class="fas fa-square-parking"></span>
					</div>
					<div class="card-body">
						<h4 class="card-title">Répondre à un besoin</h4>
						<p>Si vous cherchez un parking à proximité de votre lieu de
							travail, de l'école ou de tout autre endroit fréquenté, nous
							avons une solution pour vous !</p>
					</div>
				</div>
				<!-- end of card -->

				<!-- Card -->
				<div class="card">
					<div class="card-icon green">
						<span class="far fa-solid fa-car"></span>
					</div>
					<div class="card-body">
						<h4 class="card-title">Les numéros 1 du marché</h4>
						<p>Parkfast est le meilleur endroit pour garer votre voiture.
							Nos emplacements sont faciles d'accès et nos tarifs sont
							raisonnables. De plus, notre service est rapide et professionnel.</p>
					</div>
				</div>
				<!-- end of card -->

				<!-- Card -->
				<div class="card">
					<div class="card-icon blue">
						<span class="far fa-comments"></span>
					</div>
					<div class="card-body">
						<h4 class="card-title">Contact</h4>
						<p>Vous avez la possibilité de <a href="<c:url value="/contact"></c:url>">nous contacter</a> à tout moment.
							Un conseiller vous accompagnera tout au long du processus.</p>
					</div>
				</div>
				<!-- end of card -->

			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</div>
<!-- end of cards-1 -->
<!-- end of services -->


<c:import url="/Footer"></c:import>
