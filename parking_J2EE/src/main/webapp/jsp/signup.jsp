<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<title>Nous rejoindre</title>


 <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">S'inscrire</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
        
         <!-- Basic -->
        <div class="ex-form-1 pt-5 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="text-box mt-5 mb-5">
                            <p class="mb-4">Remplissez le formulaire pour profiter du service. Déjà inscrit ? Alors <a class="blue" href='<c:url value="/Login"></c:url>'>Connectez-vous</a></p>

                            <!-- Sign Up Form -->
                            <form>
                                <div class="mb-4 form-floating">
                                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                                    <label for="floatingInput">Email </label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="floatingInput2" placeholder="Your name">
                                    <label for="floatingInput">nom</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="floatingInput3" placeholder="Your firstname">
                                    <label for="floatingInput3">prenom</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                                    <label for="floatingPassword">Mot de passe</label>
                                </div>
                                <div class="mb-4 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                                    <label class="form-check-label" for="exampleCheck1">Je suis d'accord avec la  <a href="privacy.html">politique de confidentialité</a> et <a href="terms.html">les conditions d'utilisation</a></label>
                                </div>
                                <button type="submit" class="form-control-submit-button">S'inscrire</button>
                            </form>
                            <!-- end of sign up form -->

                        </div> <!-- end of text-box -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->

<c:import url="/Footer"></c:import>