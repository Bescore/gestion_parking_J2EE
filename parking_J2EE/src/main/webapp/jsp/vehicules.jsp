<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>

<header class="ex-header">
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h1 class="text-center">Gérer les voitures</h1>
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</header>



<div class="container">
	<div class="row">
		<div class="col-11">
			<a class=" btn btn-outline-success rounded-3 my-4 " href="<%request.getContextPath();%>vehicules">Ajouter un véhicule</a>
		</div>
	
		<div class="col-1">
			<a class=" btn btn-outline-success rounded-3 my-4 " href="<%request.getContextPath();%>Compte">Retour</a>
		</div>
	</div>
	
	<div class="card-body overflow-auto" style="height:250px">
		<!-- mettre tableau ici -->
		<table class="table table-responsive">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Marque</th>
					<th scope="col">Modèle</th>
					<th scope="col"> Modifier</th>
					<th scope="col"> Supprimer</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${voitures}" var="element">
				<tr>
					<th scope="row"><c:out value=""></c:out></th>
					<td><c:out value="${element.modele}"></c:out></td>
					<td><c:out value="${element.marque}"></c:out></td>
					<td><a href="#" class="text-muted text-decoration-none mb-0 fw-bold"><i class="fa-solid fa-pen-to-square"></i></a></td>
					<td><a href="#"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>



<c:import url="/Footer"></c:import>