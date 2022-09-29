<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Modal d'annonce -->
<script defer src="js/modal_annonce.js"></script>
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
						<p>
							Vous avez la possibilité de <a
								href="<c:url value="/contact"></c:url>">nous contacter</a> à
							tout moment. Un conseiller vous accompagnera tout au long du
							processus.
						</p>
					</div>
				</div>
				<!-- end of card -->

			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
		<div class="row">
			<div class="col-lg-12">
				<p class="h2-heading">
					*Nos offres sont soumises à conditions <span>24h/24h et 7/7 jrs</span>
				</p>
			</div>
			<!-- end of col -->
		</div>
	</div>
	<!-- end of container -->
</div>
<!-- end of cards-1 -->
<!-- end of services -->
	<!-- Invitation -->
		<div class="basic-3">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h4>
							Avec Parkfast, vous pouvez garer votre voiture rapidement et facilement, quelle que soit <span> la température !</span>
						</h4>
						<a class="btn-outline-lg page-scroll" href="<c:url value="/Signup"></c:url>"
							>S'inscrire</a
						>
					</div>
					<!-- end of col -->
				</div>
				<!-- end of row -->
			</div>
			<!-- end of container -->
		</div>
<!-- Features -->
<div id="features" class="cards-1">
	<div class="container">
		
		<!-- end of row -->
		<div class="container d-flex justify-content-center my-5">
<iframe  seamless width="888" height="336" frameborder="0" src="https://www.infoclimat.fr/public-api/mixed/iframeSLIDE?_ll=48.85341,2.3488&_inc=WyJQYXJpcyIsIjQyIiwiMjk4ODUwNyIsIkZSIl0=&_auth=AxkHEAJ8ByVVeFBnVyEAKVE5UmdcKlRzA38GZQ5rB3pTOFY3UjJQNgNtWyYGKVdhUH0FZgswATFUP1YuAHJXNgNpB2sCaQdgVTpQNVd4ACtRf1IzXHxUcwNpBmMOfQdsUzlWLFIwUDQDZVsnBjRXYlBlBXoLKwE4VDFWNwBpVzQDYgdqAmQHZ1U9UC1XeAAyUWFSMFw1VG0DYwZkDmQHZFM3VjVSMVA7A25bJwYyV2NQawViCzwBO1QyVjgAclcrAxkHEAJ8ByVVeFBnVyEAKVE3UmxcNw%3D%3D&_c=61ae1154526c49c50949ddb3dbc07454"></iframe>
</div>
	</div>
	<!-- end of container -->
</div>
<!-- end of cards-1 -->
<!-- end of services -->




<!-- Modal d'annonce -->
<div class="modal fade" id="modal_annonce" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Annonce</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body" id="modal_content"><!-- annonce ici --></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Fermer la fenêtre</button>
			</div>
		</div>
	</div>
</div>
<c:import url="/Footer"></c:import>
