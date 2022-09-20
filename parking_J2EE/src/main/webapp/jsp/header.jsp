<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- SEO Meta Tags -->
<meta name="description" content="Your description">
<meta name="author" content="Your name">

<!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
<meta property="og:site_name" content="" />
<!-- website name -->
<meta property="og:site" content="" />
<!-- website link -->
<meta property="og:title" content="" />
<!-- title shown in the actual shared post -->
<meta property="og:description" content="" />
<!-- description shown in the actual shared post -->
<meta property="og:image" content="" />
<!-- image link, make sure it's jpg -->
<meta property="og:url" content="" />
<!-- where do you want your post to link to -->
<meta name="twitter:card" content="summary_large_image">
<!-- to have large image post format in Twitter -->


<!-- Scripts -->
<script defer src="js/bootstrap.min.js"></script>
<!-- Bootstrap framework -->
<script defer src="js/swiper.min.js"></script>
<!-- Swiper for image and text sliders -->
<script defer  src="js/purecounter.min.js"></script>
<!-- Purecounter counter for statistics numbers -->
<script defer  src="js/replaceme.min.js"></script>
<!-- ReplaceMe for rotating text -->
<script defer  src="js/scripts.js"></script>
<!-- Custom scripts -->


<!-- font_awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Styles -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,400&display=swap"
	rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/swiper.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>

<!-- Favicon  -->
<link rel="icon" href="images/favicon.png">

</head>
<body data-bs-spy="scroll" data-bs-target="#navbarExample">
	
	<!-- Navigation -->
	<nav id="navbarExample"
		class="navbar navbar-expand-lg fixed-top navbar-light"
		aria-label="Main navigation">
		<div class="container">

			<!-- Image Logo -->
			<a class="navbar-brand logo-image" href="<c:url value="/home"></c:url>"><img
				 style="width:100%" src="images/parkfast_logo_2.png" alt="parkfast"></a>

			<!-- Text Logo - Use this if you don't have a graphic logo -->
			<!-- <a class="navbar-brand logo-text" href="index.html">Ioniq</a> -->

			<button class="navbar-toggler p-0 border-0" type="button"
				id="navbarSideCollapse" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="navbar-collapse offcanvas-collapse"
				id="navbarsExampleDefault">
				<ul class="navbar-nav ms-auto navbar-nav-scroll">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="<c:url value="/home#"></c:url>">Accueil</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/home#features"></c:url>">Présentation</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/Park"></c:url>">Trouver une place</a>
					</li>
					<li class="nav-item "><a
						class="nav-link " href="<c:url value="/Compte"></c:url>" id="dropdown01">Mon compte</a>
						</li>
				</ul>
				<c:if test="${empty isconnected }">
				<span class="nav-item"> <a class="btn-outline-sm"
					href="<c:url value="/Login"></c:url>">Se connecter</a>
				</span>
				</c:if>
				<c:if test="${!empty isconnected }">
				<span class="nav-item"> Bonjour , <c:out value="${nom }"></c:out> 
				<c:out value="${prenom }"></c:out>
				</span>
				</c:if>
				<c:if test="${!empty isconnected }">
				<span class="nav-item"> <a class="btn-outline-sm"
					href="<c:url value="/Login"></c:url>">Se déconnecter</a>
				</span>
				</c:if>
			</div>
			<!-- end of navbar-collapse -->
		</div>
		<!-- end of container -->
	</nav>
	<!-- end of navbar -->
	<!-- end of navigation -->
	
	
	
	