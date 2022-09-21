<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">Mon compte et informations</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
        
   <section style="background-color: #eee;">
  <div class="container py-5">
   

    <div class="row">
      <div class="col-lg-4">
        <div class="card mb-4">
          <div class="card-body text-center">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
            <h5 class="my-3">John Smith</h5>
            <p class="text-muted mb-1">Accès totale</p>
          </div>
        </div>
        <div class="card mb-4 mb-lg-0">
          <div class="card-body p-0">
            <ul class="list-group list-group-flush rounded-3">
              <li class="list-group-item text-center p-3 ">
                
                <p class="mb-0 py-5 ">Véhicule</p>
              </li>
            </ul>
          </div>
        </div>
        <!-- c if à la case numéro de place -->
      </div>
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Nom</p>
              </div>
              <div class="col-sm-9">
                <a href="#" class="text-muted mb-0">xxx</a>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Prenom</p>
              </div>
              <div class="col-sm-9">
                <a href="#" class="text-muted mb-0">xxx</a>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <a href="#" class="text-muted mb-0">xxx@xxx</a>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Mot de passe</p>
              </div>
              <div class="col-sm-9">
                <a href="#" class="text-muted mb-0">*********</a>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
           <div class="card mb-4 mb-lg-0">
          <div class="card-body p-4">
            <ul class="list-group list-group-flush rounded-3">
              <li class="list-group-item text-center p-3 ">
                
                <p class="mb-0 py-5 ">Numéro de place</p>
              </li>
            </ul>
          </div>
        </div>
           
          </div>
          <div class="col-md-6">
           <div class="card mb-4 mb-lg-0">
          <div class="card-body p-4">
            <ul class="list-group list-group-flush rounded-3">
              <li class="list-group-item text-center p-3 ">
                <p class="mb-0 py-5 ">Paiements</p>
              </li>
            </ul>
          </div>
        </div>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<c:import url="/Footer"></c:import>