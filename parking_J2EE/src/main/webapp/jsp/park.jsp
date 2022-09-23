<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>

<!-- Details 1 -->
<div id="details" class="basic-1 bg-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-xl-5">
				<div class="text-container">
					<h2>Me garer rapidement..</h2>
					<p>Laissez vous guider</p>
					<a href=<c:url value="/Park#pricing"></c:url> class="btn-solid-reg">C'est
						parti !</a>
				</div>
				<!-- end of text-container -->
			</div>
			<!-- end of col -->
			<div class="col-lg-6 col-xl-7">
				<div class="image-container">
					<img class="img-fluid" src="images/park_on_top.png"
						alt="alternative" />
				</div>
				<!-- end of image-container -->
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</div>
<!-- end of basic-1 -->
<!-- end of details 1 -->

<!-- Details Modal -->

<form method="post">
	<div id="staticBackdrop" class="modal fade" tabindex="-1"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="row">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
					<div class="col-lg-8 overflow-auto d-flex">

						<div class="image-container text-light">
							<c:forEach items="${placeParkingTab }" var="element">
								<c:choose>
									<c:when
										test="${element.utilisateur.id_utilisateur==0|| empty element.utilisateur.id_utilisateur}">
										<div class="p-4 image_parking"
											style="border: 1px #f3f3f3 solid; display: inline-block;">
											<input class="form-check-input" type="radio"
												name="choix_place" value="${element.id_place_parking }"
												value="XXX"> <span class="fs-3"><c:out
													value="${element.nom_place }"></c:out> </span><i
												class="text-success fa-solid fa-circle-check"></i>
										</div>
									</c:when>

									<c:when
										test="${element.utilisateur.id_utilisateur!=0|| !empty element.utilisateur.id_utilisateur}">
										<div class="p-4 image_parking"
											style="border: 1px #f3f3f3 solid; display: inline-block;">
											<input class="form-check-input" type="radio"
												name="choix_place" value="${element.id_place_parking }"
												disabled> <span class="fs-2"><c:out
													value="${element.nom_place }"></c:out> </span> <i
												class=" text-danger fa-solid fa-xmark"></i>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
						</div>

					</div>

					<!-- end of col -->
					<div class="col-lg-4">
						<h3>Choisissez votre emplacement</h3>
						<hr />
						<p>La place de parking peut vous être attribué si celle-ci est
							disponible.</p>
						<h4>Légende</h4>

						<ul class="list-unstyled li-space-lg">
							<li class="d-flex"><i class="fas fa-chevron-right"></i>
								<div class="flex-grow-1">
									Place disponible <i
										class="text-success fa-solid fa-circle-check"></i>
								</div></li>
							<li class="d-flex"><i class="fas fa-chevron-right"></i>
								<div class="flex-grow-1">
									Place non disponible <i class=" text-danger fa-solid fa-xmark"></i>
								</div></li>

						</ul>

						<c:if test="${!empty isconnected }">
							<h4>Marque et modèle du véhicule</h4>
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Marque</label>
								<input type="text" class="form-control" name="marque"
									placeholder="Citroën, Renault, Toyota">
							</div>
							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Modèle</label>
								<input type="text" class="form-control" name="modele"
									placeholder="C4, scenic, Yaris">
							</div>
						</c:if>
						<c:if test="${!empty isconnected }">
							<button name="valider_choix_de_place" type="submit"
								class="btn-solid-reg">Valider</button>
						</c:if>
						<c:if test="${empty isconnected }">
							<a id="modalCtaBtn" href="<%request.getContextPath();%>Login"
								class="btn-solid-reg">Valider</a>
						</c:if>

						<button type="button" class="btn-outline-reg"
							data-bs-dismiss="modal">Close</button>

					</div>
					<!-- end of col -->
				</div>
				<!-- end of row -->
			</div>
			<!-- end of modal-content -->
		</div>
		<!-- end of modal-dialog -->
	</div>
</form>


<!-- end of modal -->
<!-- end of details modal -->

<!-- Pricing -->
<div id="pricing" class="cards-2 bg-gray text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="h2-heading">Notre Tarif</h2>
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
		<div class="row">
			<div class="col-lg-12">

				<c:if test="${erreur_reconnexion==1}">
					<div class="container ">
						<div class="alert alert-danger text-center m-2">
							<strong>Echec !</strong> La connexion est perdu vous devez vous
							reconnecter.
						</div>
					</div>
				</c:if>
				<!-- Card -->
				<div class="card">
					<div class="card-body mx-auto">
						<div class="card-title">
							<img class="decoration-lines" src="images/decoration-lines.svg"
								alt="alternative" /><span>Accès totale </span><img
								class="decoration-lines flipped"
								src="images/decoration-lines.svg" alt="alternative" />
						</div>
						<ul class="list-unstyled li-space-lg">
							<li>Vous devez inscrire votre véhicule</li>
							<li>Vous vous engagez à régler</li>
							<li>Si vous ne réglez pas les sommes dû</li>
							<li>Vous vous exposez à des <strong>poursuites
									judiciaires </strong></li>
							<li>(voir les conditions d'utilisations)</li>

						</ul>
						<div class="price">
							0.6<span>centimes/minutes</span>
						</div>

						<div>
							<a class="btn-solid-reg" data-bs-toggle="modal"
								data-bs-target="#staticBackdrop">Places disponibles</a>
						</div>
					</div>
				</div>
				<!-- end of card -->
				<!-- end of card -->

			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</div>
<!-- end of cards-2 -->
<!-- end of pricing -->




<c:import url="/Footer"></c:import>