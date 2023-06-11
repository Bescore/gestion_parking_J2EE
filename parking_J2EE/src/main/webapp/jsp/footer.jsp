<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- Footer -->
<div id="footer" class="footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="footer-col first">
					<h6>A propos de nous</h6>
					<p class="p-small">Plus besoin de chercher des places de parcmètre ou de vous inquiéter pour votre voiture !
					 Avec Parkfast, vous pouvez choisir le type d'emplacement qui vous convient le mieux et être certain que votre voiture est en sécurité.</p>
				</div>
				<!-- end of footer-col -->
				<div class="footer-col second">
					<h6>Liens</h6>
					<ul class="list-unstyled li-space-lg p-small">
						<li>Important: <a href="terms.html">les conditions d'utilisation</a>, <a
							href="privacy.html">politique de confidentialité</a></li>
						<li>Lien du projet: <a href="https://github.com/Bescore/gestion_parking_J2EE"><strong>Gestion de parking en J2EE</strong></a></li>
						<li>Menu: <a href="<%request.getContextPath();%>home#header">Accueil</a>,
							<a href="<%request.getContextPath();%>Park#details">Details</a>, <a href="<%request.getContextPath();%>Park#pricing">Les prix</a></li>
					</ul>
				</div>
				<!-- end of footer-col -->
				<div class="footer-col third">
					<span class="fa-stack"> <a href="https://www.facebook.com"> <i
							class="fas fa-circle fa-stack-2x"></i> <i
							class="fab fa-facebook-f fa-stack-1x"></i>
					</a>
					</span> <span class="fa-stack"> <a title="site de référence" href="https://cool-praline-82e1db.netlify.app"> <i
							class="fas fa-circle fa-stack-2x"></i> 
							<i class="fa-solid fa-car-side fa-stack-1x"></i>
					</a>
					</span> <span class="fa-stack"> <a title="linkedin" href="https://www.linkedin.com/in/jean-marie-lator-74543a202/"> <i
							class="fas fa-circle fa-stack-2x"></i> <i class="fa-brands fa-linkedin-in fa-stack-1x"></i>
					</a>
					</span> <span class="fa-stack"> <a title="github" href="https://github.com/Bescore"> <i
							class="fas fa-circle fa-stack-2x"></i> <i class="fa-brands fa-github fa-stack-1x"></i>
					</a>
					</span>
					<p class="p-small">
						Nos coordonnées<br>
						Développeur Web <a href="mailto:contact@site.com"><strong>jean.marie.lator@gmail.com</strong></a>
					</p>
				</div>
				<!-- end of footer-col -->
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</div>
<!-- end of footer -->
<!-- end of footer -->

<!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
        
</body>
</html>