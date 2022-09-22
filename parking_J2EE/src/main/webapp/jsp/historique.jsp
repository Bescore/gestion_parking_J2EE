<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<!-- Header -->
<header class="ex-header">
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h1 class="text-center">Historique</h1>
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
								<c:out value="Mon historique"></c:out>

							</h5>

						</div>
					</div>
					<div class="card mb-4 mb-lg-0">
						<div class="card-body p-0">
							<ul class="list-group list-group-flush rounded-3">
								<li class="list-group-item text-center p-3 "><c:if
										test="${!empty listVoitures}">
										<p class="mb-0 py-3 ">Liste des véhicules utilisés et
											dates</p>

										<select class="form-select"
											aria-label="Default select example">
											<c:forEach items="${listVoitures}" var="element">
												<option value="${element.id_voitures }"><c:out
														value="${element.marque } ${element.modele } || ${element.date_heure }"></c:out></option>
											</c:forEach>
										</select>
										<input class="btn btn-outline-success rounded-3 my-5"
											name="choisirVehicule" type="submit" value="Gérer">
									</c:if> 
										<p class="mb-0 py-5 "><i class="fa-solid text-warning fa-triangle-exclamation mx-1"></i>Attention, toute sommes dû et non réglé vous expose à des poursuites judicdiaires </p>
									</li>
							</ul>
						</div>
					</div>

				</div>
				<div class="col-lg-8">
					<div class="card mb-4">
						<div class="card-body overflow-auto">
							<!-- mettre tableau ici -->
							<table class="table table-responsive">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Durée d'occupation</th>
										<th scope="col">Date d'attribution</th>
										<th scope="col">Place </th>
										<th scope="col">Etage</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${historique}" var="element">
									<tr>
										<th scope="row"><c:out value="${element.id_historique }"></c:out></th>
										<td><c:out value="${element.duree_occupation }"></c:out></td>
										<td><c:out value="${element.date_attribution}"></c:out></td>
										<td><c:out value="${element.place_parking.nom_place }"></c:out></td>
										<td><c:out value="${element.place_parking.etage.numero_etage }"></c:out></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
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
						<div class="col-md-6">
							<div class="card mb-4 mb-lg-0">
								<div class="card-body p-4">
									<ul class="list-group list-group-flush rounded-3">
										<li class="list-group-item text-center p-3 "><c:if
												test="${!empty informationsPlaceParking }">
												<p class="mb-0 py-2">Garé depuis le</p>
												<p class="mb-0  fw-bold">
													<c:out value="${derniereVoiture.date_heure }"></c:out>
												</p>
											</c:if></li>
										<li class="list-group-item text-center p-2 "><a
											href="<c:url value="/Historique"></c:url>" class="mb-0 py-4 ">Historique</a>
										</li>
										<li class="list-group-item text-center p-2 "><a
											href="<c:url value="/Reglement"></c:url>" class="mb-0 py-4 ">Règlement</a>
										</li>
										<c:if test="${ !empty informationsPlaceParking}">
											<li class="list-group-item text-center p-3 ">
												<button type="submit" name="libererPlace"
													value="${informationsPlaceParking.id_place_parking }"
													class="mb-0 text-decoration-none btn btn-outline-danger rounded-4">
													<i class="fa-solid fa-cog fa-spin mx-1"></i>Libérer la
													place de parking
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
		</form>
	</div>
</section>
<c:import url="/Footer"></c:import>