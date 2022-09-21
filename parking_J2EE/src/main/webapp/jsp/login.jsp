<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<title>Conncetez-vous</title>

 <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">Se connecter</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->

<c:if test="${erreur_connexion==1}">
<div class="container ">
<div class="alert alert-danger text-center m-2">
	<strong>Echec !</strong> données incorrecte ou email inconnu.
</div>
</div>
</c:if>
 <!-- Basic -->
        <div class="ex-form-1 pt-5 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="text-box mt-5 mb-5">
                            <p class="mb-4">Vous n'avez pas d'identifiants? <a class="blue" href='<c:url value="/Signup"></c:url>'>S'inscrire</a></p>

                            <!-- Log In Form -->
                            <form method="post">
                                <div class="mb-4 form-floating">
                                    <input type="email" class="form-control" name="email" placeholder="name@example.com" data-placement="top"
							 title="exemple: parkfast@parfast.com">
                                    <label for="floatingInput">Email </label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="password" class="form-control" name="password" placeholder="Password" data-toggle="tooltip" data-placement="top" 
								title="8-20 , caractère , majuscule , minuscule , caractère spéciale , chiffre de 0-9">
                                    <label for="floatingPassword" >Mot de passe</label>
                                </div>
                                <div class="mb-4 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                                    <label class="form-check-label" for="exampleCheck1">Je suis d'accord avec la  <a href="privacy.html">politique de confidentialité</a> et <a href="terms.html">les conditions d'utilisation</a></label>
                                </div>
                                <button type="submit" name="se_connecter" class="form-control-submit-button">Valider</button>
                            </form>
                            <!-- end of log in form -->

                        </div> <!-- end of text-box -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->

<c:import url="/Footer"></c:import>