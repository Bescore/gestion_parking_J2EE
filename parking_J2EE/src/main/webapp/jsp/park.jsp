<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>

<!-- Details 1 -->
		<div id="details" class="basic-1 bg-gray">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-xl-5">
						<div class="text-container">
							<h2>
								Me garer rapidement..
							</h2>
							<p>
								Laissez vous guider
							</p>
							<a href=<c:url value="/Park#pricing"></c:url>
								class="btn-solid-reg"
								>C'est parti !</a
							>
						</div>
						<!-- end of text-container -->
					</div>
					<!-- end of col -->
					<div class="col-lg-6 col-xl-7">
						<div class="image-container">
							<img
								class="img-fluid"
								src="images/park_on_top.png"
								alt="alternative"
							/>
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
		<div
			id="staticBackdrop"
			class="modal fade"
			tabindex="-1"
			aria-hidden="true"
		>
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="row">
						<button
							type="button"
							class="btn-close"
							data-bs-dismiss="modal"
							aria-label="Close"
						></button>
						<div class="col-lg-8">
							<div class="image-container">
								<img
									class="img-fluid"
									src="images/details-modal.jpg"
									alt="alternative"
								/>
							</div>
							<!-- end of image-container -->
						</div>
						<!-- end of col -->
						<div class="col-lg-4">
							<h3>Goals Setting</h3>
							<hr />
							<p>
								In gravida at nunc sodales pretium. Vivamus semper, odio vitae
								mattis auctor, elit elit semper magna ac tum nico vela spider
							</p>
							<h4>User Feedback</h4>
							<p>
								Sapien vitae eros. Praesent ut erat a tellus posuere nisi more
								thico cursus pharetra finibus posuere nisi. Vivamus feugiat
							</p>
							<ul class="list-unstyled li-space-lg">
								<li class="d-flex">
									<i class="fas fa-chevron-right"></i>
									<div class="flex-grow-1">
										Tincidunt sem vel brita bet mala
									</div>
								</li>
								<li class="d-flex">
									<i class="fas fa-chevron-right"></i>
									<div class="flex-grow-1">
										Sapien condimentum sacoz sil necr
									</div>
								</li>
								<li class="d-flex">
									<i class="fas fa-chevron-right"></i>
									<div class="flex-grow-1">
										Fusce interdum nec ravon fro urna
									</div>
								</li>
								<li class="d-flex">
									<i class="fas fa-chevron-right"></i>
									<div class="flex-grow-1">
										Integer pulvinar biolot bat tortor
									</div>
								</li>
								<li class="d-flex">
									<i class="fas fa-chevron-right"></i>
									<div class="flex-grow-1">
										Id ultricies fringilla fangor raq trinit
									</div>
								</li>
							</ul>
							<a id="modalCtaBtn" class="btn-solid-reg" href="#your-link"
								>Details</a
							>
							<button
								type="button"
								class="btn-outline-reg"
								data-bs-dismiss="modal"
							>
								Close
							</button>
						</div>
						<!-- end of col -->
					</div>
					<!-- end of row -->
				</div>
				<!-- end of modal-content -->
			</div>
			<!-- end of modal-dialog -->
		</div>
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
									<img
										class="decoration-lines"
										src="images/decoration-lines.svg"
										alt="alternative"
									/><span>Accès totale </span
									><img
										class="decoration-lines flipped"
										src="images/decoration-lines.svg"
										alt="alternative"
									/>
								</div>
								<ul class="list-unstyled li-space-lg">
									<li>Vous vous engagez à régler  </li>
									<li>Si vous ne réglez pas les sommes dû</li>
									<li>Vous vous exposez à des <strong>poursuites judiciaires </strong></li>
									<li>(voir les conditions d'utilisations)</li>
									
								</ul>
								<div class="price">0.06<span>centimes/minutes</span></div>
								
								<div><a
								class="btn-solid-reg"
								data-bs-toggle="modal"
								data-bs-target="#staticBackdrop"
								>Places disponibles</a
							></div>
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