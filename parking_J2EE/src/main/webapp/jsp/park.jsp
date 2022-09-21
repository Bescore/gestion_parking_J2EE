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
<form>
	<div id="staticBackdrop" class="modal fade" tabindex="-1"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="row">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
					<div class="col-lg-8 overflow-auto d-flex">
						<div class="image-container">
							<div class="p-4"
								style="border: 1px #f3f3f3 solid; display: inline-block">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1" value="XXX">
								<span class="fs-2">A1</span><i
									class="text-success fa-solid fa-circle-check"></i>
							</div>
						</div>
						<!-- end of image-container -->
						<div class="image-container">
							<div class="p-4"
								style="border: 1px #f3f3f3 solid; display: inline-block">
								<input class="form-check-input" type="radio"
									name="exampleRadios" id="exampleRadios3" disabled> <span
									class="fs-2">A1</span><i
									class="text-danger fa-solid fa-circle-check"></i>
							</div>
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
						<h4>Choisissez le véhicule</h4>
						<select class="form-select form-select-sm my-3"
							aria-label=".form-select-sm example">
							<option selected>Open this select menu</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
						<button id="modalCtaBtn" type="submit" class="btn-solid-reg">Valider</button>
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
							0.06<span>centimes/minutes</span>
						</div>

						<div>
							<a class="btn-solid-reg" data-bs-toggle="modal"
								data-bs-target="#staticBackdrop">Places
								disponibles</a>
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