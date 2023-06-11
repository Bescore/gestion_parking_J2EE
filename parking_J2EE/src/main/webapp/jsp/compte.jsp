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
							<p class="text-muted mb-1">Accès total</p>
						</div>
					</div>
					<div class="card mb-4 mb-lg-0">
						<div class="card-body p-0">
							<ul class="list-group list-group-flush rounded-3">
								<li class="list-group-item text-center p-3 "><c:if
										test="${!empty listVoitures}">
										<p class="mb-0 py-3 ">Liste des véhicules utilisés</p>

										<select class="form-select"
											aria-label="Default select example">
											<c:forEach items="${listVoitures}" var="element">
												<option value="${element.id_voitures }"><c:out
														value="${element.marque } ${element.modele }"></c:out></option>
											</c:forEach>
										</select>
										<a class="btn btn-outline-success rounded-3 my-5" href="<%request.getContextPath();%>vehicules">Gérer les véhicules</a>
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
								<div class="col-sm-7">
									<a href="#"
										class="text-muted text-decoration-none mb-0 fw-bold"><c:out
											value="${nom }"></c:out></a>
								</div>
								<div class="col-sm-2">
									<a href="<%request.getContextPath();%>Infos?action=nom"
										class="text-muted text-decoration-none mb-0 fw-bold"><i
										class="fa-solid fa-pen-to-square"></i></a>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Prenom</p>
								</div>
								<div class="col-sm-7">
									<a href="#"
										class="text-muted text-decoration-none mb-0 fw-bold"><c:out
											value="${prenom }"></c:out></a>
								</div>
								<div class="col-sm-2">
									<a href="<%request.getContextPath();%>Infos?action=prenom"
										class="text-muted text-decoration-none mb-0 fw-bold"><i
										class="fa-solid fa-pen-to-square"></i></a>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Email</p>
								</div>
								<div class="col-sm-7">
									<a href="#"
										class="text-muted text-decoration-none mb-0 fw-bold"><c:out
											value="${email }"></c:out></a>
								</div>
								<div class="col-sm-2">
									<a href="<%request.getContextPath();%>Infos?action=email"
										class="text-muted text-decoration-none mb-0 fw-bold"><i
										class="fa-solid fa-pen-to-square"></i></a>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Inscrit le</p>
								</div>
								<div class="col-sm-7">
									<a href="#"
										class="text-muted text-decoration-none mb-0 fw-bold"><c:out
											value="${date_inscription }"></c:out></a>
								</div>
								<div class="col-sm-2">
									<a href="#"
										class="text-muted text-decoration-none mb-0 fw-bold"><i
										class="fa-regular fa-id-badge"></i></a>
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
											<li class="list-group-item text-center p-2 ">

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
										<li class="list-group-item text-center p-3 "><c:if
												test="${!empty informationsPlaceParking }">
												<p class="mb-0 py-1">Garé depuis le</p>
												<p class="mb-0  fw-bold">
													<c:out value="${derniereVoiture.date_heure }"></c:out>
												</p>
											</c:if></li>
										<li class="list-group-item text-center p-2 "><a
											href="<c:url value="/Historique"></c:url>" class="mb-0 py-4 ">Historique</a>
										</li>
										<li class="list-group-item text-center p-1 "><span
											class="mb-0 py-4 "><i
												class="fa-solid text-warning fa-triangle-exclamation mx-1 fa-beat"
												style="-fa-beat-scale: 2.0;"></i> Vous devez libérer la place avant de choisir un autre emplacement.</span></li>
										<c:if test="${ !empty informationsPlaceParking}">
											<li class="list-group-item text-center p-2 ">
												<button type="button" data-bs-toggle="modal"
													data-bs-target="#exampleModal"
													class="mb-0 text-decoration-none btn btn-outline-danger rounded-4">
													<i class="fa-solid fa-cog fa-spin mx-1"
														style="-fa-animation-duration: 7s;"></i>Libérer la place
													de parking
												</button>
											</li>
										</c:if>
									</ul>
								</div>
							</div>

						</div>


					</div>

				</div>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div  class="modal-dialog modal-dialog-centered ">
					<div class="modal-content ">
						<div class="modal-header">
							<h5 class="modal-title " id="exampleModalLabel">Confirmation</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">Vous allez libérer la place de
							parking, êtes vous sûr?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">Annuler</button>
							<button type="submit" name="libererPlace"
								value="${informationsPlaceParking.id_place_parking }"
								class="btn btn-outline-primary">Oui</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</section>
<c:import url="/Footer"></c:import>