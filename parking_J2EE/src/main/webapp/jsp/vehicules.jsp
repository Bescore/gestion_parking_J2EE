<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<title>Gérer mes voitures</title>

<header class="ex-header">
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h1 class="text-center">Gérer mes voitures</h1>
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</header>



<div class="container">
	<form action="" method="post">
		<div class="row">
			<div class="col m-3">
				<button type="submit" name="ajouter_voiture" class="btn btn-outline-primary">Ajouter un véhicule</button>
			</div>
			<div class=" col m-3  form-floating">
				<input type="text" class="form-control" name="marque"
					data-toggle="tooltip" data-placement="top"
					title="expression régulière, espace, tirets autorisé"
					placeholder="marque"> <label for="floatingInput3">marque</label>
			</div>
			<div class=" col m-3  form-floating">
				<input type="text" class="form-control" name="modele"
					data-toggle="tooltip" data-placement="top"
					title="expression régulière, espace, tirets autorisé"
					placeholder="marque"> <label for="floatingInput3">modèle</label>
			</div>
	
		</div>
	</form>

	<div class="card-body overflow-auto" style="height: 250px">
		<!-- mettre tableau ici -->
		<table class="table table-responsive">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Marque</th>
					<th scope="col">Modèle</th>
					<th scope="col">Modifier</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${voitures}" var="element">
					<tr>
						<th scope="row"><c:out value=""></c:out></th>
						<td><c:out value="${element.marque}"></c:out></td>
						<td><c:out value="${element.modele}"></c:out></td>
						<td><a href="#"
							class="text-muted text-decoration-none mb-0 fw-bold"><i
								class="fa-solid fa-pen-to-square"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="col">
			<a class=" btn btn-outline-primary rounded-3 my-4 "
				href="<%request.getContextPath();%>Compte">Retour</a>
		</div>
	</div>
</div>



<c:import url="/Footer"></c:import>