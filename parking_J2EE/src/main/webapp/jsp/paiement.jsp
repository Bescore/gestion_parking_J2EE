<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<title>Paiement</title>
<script defer src="js/paypal.js"></script>
<script src="https://www.paypal.com/sdk/js?client-id=AT_x8pu54r3q_wqaOm1HZ_PTNDc8XkDfPxCzYDNZ3lQoBRt8_p6Cm9-83gghAWadYCQRZEITcrs0jPod&currency=USD"></script>
<!-- Header -->
<header class="ex-header">
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h1 class="text-center">Paiement</h1>
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
<c:if test="${paymentEffectuer==1}">
<div class="container ">
<div class="alert alert-success text-center  p-0">
	<strong>Succès !</strong> Le paiement à été pris en compte.
</div>
</div>
</c:if>
		<form id="myForm" method="post">
			<div class="row">
				<div class="col-lg-4">
					<div class="card mb-4">
						<div class="card-body text-center">
							<img
								src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
								alt="avatar" class="rounded-circle img-fluid"
								style="width: 150px;">
							<h5 class="my-3 fw-bold">
								Moyen de paiement

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
										<p class="mb-0 py-5 "><i class="fa-solid text-warning fa-triangle-exclamation mx-1"></i>Attention, toute somme due et non réglée vous expose à des poursuites judiciaires. </p>
									</li>
							</ul>
						</div>
					</div>

				</div>
				<div class="col-lg-8">
					<div class="card mb-4">
					<c:if test="${sommeApayer!=0 }">
						<div class="card-body overflow-auto" style="height:250px">
							<!-- mettre paiment ici ici -->
							<p id="wannaPay" class="card-body text-center py-0">Payer en quelques cliques</p>
							<p class="card-body text-center py-0 fw-bold fs-2"><c:out value="${sommeApayer } €"></c:out></p>
							<c:if test="${sommeApayer>=1 }">
							<div class="mx-auto" style="width:250px;" ><div id="paypal-button-container"></div></div>
							</c:if>
							<c:if test="${sommeApayer<1 }">
							<div class="mx-auto text-center" >Le minimum pour procéder au paiement est 1€</div>
							</c:if>
						</div>
						</c:if>
						<c:if test="${ sommeApayer<=0 }">
						<div class="card-body overflow-auto d-flex justify-content-center align-items-center" style="height:250px">
							<!-- mettre paiment ici ici -->
							<p  class="card-body text-center fw-bold fs-3">Vous n'avez rien à payer</p>
							
						</div>
						</c:if>
					</div>

					<div class="row">
							<div class="col-md-6">
								<div class="card mb-4 mb-lg-0">
									<div class="card-body p-4">
										<ul class="list-group list-group-flush rounded-3">
											<li class="list-group-item text-center p-3 ">

												<p class="mb-0 py-3 ">Moyen de paiement</p>
											</li>
											<li class="list-group-item text-center p-3 ">

												<p class="mb-0 fw-bold fs-3 py-1"><i class="fa-brands text-success fa-cc-paypal mx-1 fa-flip fa-1x" style="--fa-animation-duration: 3s;"></i><i class="fa-solid fa-credit-card text-success fa-beat mx-3" style="--fa-animation-duration: 3s;"></i>
											</li>
										</ul>
									</div>
								</div>
							</div>
						<div class="col-md-6">
							<div class="card mb-4 mb-lg-0">
								<div class="card-body p-4">
									<ul class="list-group list-group-flush rounded-3">
										<li class="list-group-item text-center p-2 "><a
											href="<c:url value="/Historique"></c:url>" class="mb-0 py-4 ">Historique</a>
										</li>
										<li class="list-group-item text-center p-2 "><a
											href="<c:url value="#"></c:url>" class="mb-0 py-4 ">Règlement</a>
										</li>
										<li class="list-group-item text-center p-3 ">
											<a href="<c:url value="/Compte"></c:url>" name="libererPlace"  class="mb-0 text-decoration-none btn btn-outline-primary rounded-4 my-1"><i class="fa-solid fa-cog fa-spin mx-1" style="--fa-animation-duration: 7s;"></i>Mon compte</a>
										</li>
									</ul>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<input hidden name="validPayment" value="valid" class="form-control-submit-button">
		</form>
	</div>
</section>
<c:import url="/Footer"></c:import>