<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<!-- Header -->
<header class="ex-header">
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h1 class="text-center">Mon compte et informations</h1>
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</header>
<!-- end of ex-header -->
<!-- end of header -->

<section style="background-color: #eee;">
	<div class="container py-5">

<form method="post">
		<div class="row">
			<div class="col-lg-4">
				<div class="card mb-4">
					<div class="card-body text-center">
						<img
							src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
							alt="avatar" class="rounded-circle img-fluid"
							style="width: 150px;">
						<h5 class="my-3 fw-bold">
							<c:out value="${prenom }"></c:out>
							<c:out value="${nom }"></c:out>
						</h5>
						<p class="text-muted mb-1">Accès totale</p>
					</div>
				</div>
				<div class="card mb-4 mb-lg-0">
					<div class="card-body p-0">
						<ul class="list-group list-group-flush rounded-3">
							<li class="list-group-item text-center p-3 "><c:if
									test="${!empty listVoitures}">
									<p class="mb-0 py-3 ">Liste des véhicules utilisés et dates</p>

									<select class="form-select" aria-label="Default select example">
										<c:forEach items="${listVoitures}" var="element">
											<option value="${element.id_voitures }"><c:out
													value="${element.marque } ${element.modele } || ${element.date_heure }"></c:out></option>
										</c:forEach>
									</select>
									<input class="btn btn-outline-success rounded-3 my-5" name="choisirVehicule" type="submit" value="Gérer">
								</c:if> <c:if test="${empty listVoitures}">
									<p class="mb-0 py-5 ">vous ne disposez pas de véhicule</p>
								</c:if></li>
						</ul>
					</div>
				</div>

			</div>
			<div class="col-lg-8">
				<div class="card mb-4">
					<div class="card-body">
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Nom</p>
							</div>
							<div class="col-sm-9">
								<a href="#" class="text-muted text-decoration-none mb-0"><c:out value="${nom }"></c:out></a>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Prenom</p>
							</div>
							<div class="col-sm-9">
								<a href="#" class="text-muted text-decoration-none mb-0 fw-bold"><c:out
										value="${prenom }"></c:out></a>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Email</p>
							</div>
							<div class="col-sm-9">
								<a href="#" class="text-muted text-decoration-none mb-0 fw-bold"><c:out
										value="${email }"></c:out></a>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Mot de passe</p>
							</div>
							<div class="col-sm-9">
								<a href="#" class="text-muted text-decoration-none mb-0 fw-bold"><c:out
										value="${mot_de_passe }"></c:out>***************</a>
							</div>
						</div>
					</div>
				</div>

				<div class="row">


					<c:if test="${ empty informationsPlaceParking}">
						<div class="col-md-6">
							<div class="card mb-4 mb-lg-0">
								<div class="card-body p-4">
									<ul class="list-group list-group-flush rounded-3">
										<li class="list-group-item text-center p-3 ">

											<p class="mb-0 py-5 ">Aucune place de parking attribuée</p>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${ !empty informationsPlaceParking}">
						<div class="col-md-6">
							<div class="card mb-4 mb-lg-0">
								<div class="card-body p-4">
									<ul class="list-group list-group-flush rounded-3">
										<li class="list-group-item text-center p-3 ">
											<p class="mb-0 ">Où suis-je garé ?</p>
											<p class="mb-0 py-3 fs-1 fw-bold">
												<c:out value="${informationsPlaceParking.nom_place }"></c:out>
											</p>
											<p class="mb-0 py-2 ">Etage</p>
											<p class="mb-0  fs-1 fw-bold">
												<c:out
													value="${informationsPlaceParking.etage.numero_etage }"></c:out>
											</p>
											<p class="mb-0 py-2 ">Véhicule</p> <c:if
												test="${empty derniereVoiture  }">
												<p class="mb-0 fw-bold">Vous ne disposez d'aucun
													véhicule</p>
											</c:if> <c:if test="${!empty derniereVoiture }">
												<p class="mb-0 fs-3 fw-bold">
													<c:out
														value="${derniereVoiture.marque } ${derniereVoiture.modele }"></c:out>
												</p>
											</c:if>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</c:if>
					<div class="col-md-6">
						<div class="card mb-4 mb-lg-0">
							<div class="card-body p-4">
								<ul class="list-group list-group-flush rounded-3">
									<li class="list-group-item text-center p-3 ">
									 <c:if test="${!empty derniereVoiture }">
											 <p class="mb-0 py-2">Garé depuis le</p>
												<p class="mb-0  fw-bold">
													<c:out
														value="${derniereVoiture.date_heure }"></c:out>
												</p>
											</c:if>
									</li>
									<li class="list-group-item text-center p-2 ">
										<a href="<c:url value="/Historique"></c:url>"  class="mb-0 py-4 ">Historique</a>
									</li>
									<li class="list-group-item text-center p-2 ">
										<a href="<c:url value="/Reglement"></c:url>"  class="mb-0 py-4 ">Règlement</a>
									</li>
									<c:if test="${ !empty informationsPlaceParking}">
									<li class="list-group-item text-center p-3 ">
										<button type="submit" name="libererPlace" value="${informationsPlaceParking.id_place_parking }" class="mb-0 text-decoration-none btn btn-outline-danger rounded-4"><i class="fa-solid fa-cog fa-spin mx-1"></i>Libérer la place de parking</button>
									</li>
									</c:if>
								</ul>
							</div>
						</div>

					</div>


				</div>

			</div>
		</div>
		</form>
	</div>
</section>
<c:import url="/Footer"></c:import>