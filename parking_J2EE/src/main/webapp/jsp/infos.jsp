<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<!-- Header -->
<header class="ex-header">
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h1 class="text-center">Modifier mes informations</h1>
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</header>
<!-- end of ex-header -->
<!-- end of header -->

<script src="js/formAjax.js"></script>


<section style="background-color: #eee;">
	<div class="container py-5">
		<c:if test="${erreur==1}">
			<div class="container ">
				<div class="alert alert-danger text-center my-2 p-0">
					<strong>Echec !</strong> Vous devez rentrer des données valide".
				</div>
			</div>
		</c:if>
		<c:if test="${erreur==0}">
			<div class="container ">
				<div class="alert alert-success text-center my-2 p-0">
					<strong>Succès !</strong> Vous avez bien modifié cette donnée".
				</div>
			</div>
		</c:if>
		<form method="post">
			<div class="row">

				<div class="col-lg-9">

					<div class="card mb-4">

						<div class="card-body overflow-auto">
							<!-- mettre formulaire ici -->

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">
									Changer  <c:out value="${colonneAmodifier }"></c:out>
								</label> <input type="text" class="form-control"
									name="ancienneValeurInput" value="${value }"
									aria-describedby="emailHelp">
								<div id="emailHelp" class="form-text">En cliquant, vous
									effectuez une modification.</div>
							</div>
							<button type="submit" name="modifier" class="btn btn-outline-primary">Valider</button>

						</div>

					</div>

					<div class="row">
						<div class="col-md-6">
							<div class="card mb-4 mb-lg-0">
								<div class="card-body p-4">
									<ul class="list-group list-group-flush rounded-3">
										<li class="list-group-item text-center p-2 ">

											<p class="mb-0 py-3 ">Retourner vers mon compte</p>
										</li>
										<li class="list-group-item text-center p-3 "><a
											href="<c:url value="/Compte"></c:url>" name="libererPlace"
											class="mb-0 text-decoration-none btn btn-outline-primary rounded-4 my-1"><i
												class="fa-solid fa-cog fa-spin mx-1"
												style="-fa-animation-duration: 7s;"></i>Mon compte</a></li>
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