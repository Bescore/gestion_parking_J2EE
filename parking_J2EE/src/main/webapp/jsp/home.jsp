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
							C'est facile !  <span class="replace-me">Connectez-vous, Trouvez une place, Garez-vous !</span>
						</h1>
						<p class="p-large">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Ut dignissim, neque ut vanic barem ultrices
							sollicitudin</p>
						<a class="btn-solid-lg" href="<c:url value="/Signup"></c:url>">S'inscrire gratuitement</a>
					</div>
					<!-- end of text-container -->
				</div>
				<!-- end of col -->
				<div class="col-lg-6">
					<div class="image-container">
						<img class="img-fluid" src="images/parked.svg"
							alt="kakala">
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


<c:import url="/Footer"></c:import>
