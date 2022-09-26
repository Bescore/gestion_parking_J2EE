package controller;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Base64;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UtilisateurDao;
import modele.Utilisateur;

/**
 * Servlet implementation class login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		request.getRequestDispatcher("jsp/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// recuperer session
		HttpSession session = request.getSession();

		// recuperer les données du formulaire
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// verifier le pattern
		if (Pattern.matches("^[a-zA-Z0-9._%-]+[@]+[a-zA-Z0-9.-]+[.]+[a-zA-Z]{2,4}$", email) && Pattern
				.matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}.]:;',?/*~$^+=<>]).{8,20}$", password)) {
			// si on clique sur le bouton
			if (request.getParameter("se_connecter") != null) {

				// preparer et instancier utilisateur
				Utilisateur user = new Utilisateur();
				// attribuer l'email et le mot de passe
				user.setEmail(email);
				user.setPassword(password);

				// instancier utilisateurDao
				UtilisateurDao newUserDao = new UtilisateurDao();

				// si l'utilisateur est trouvé (si la taille du tableau d'user retourné est
				// différent de 0)
				if (newUserDao.findByConnexion(user).size() != 0) {

					// Array vide
					ArrayList<Utilisateur> usertab = new ArrayList<Utilisateur>();
					usertab = newUserDao.findByConnexion(user);

					// creer token ou generer un array de byte, qu'on va ensuite tostring et encoder
					// en base64
					SecureRandom random = new SecureRandom();
					byte bytes[] = new byte[20];
					random.nextBytes(bytes);
					String token = Base64.getEncoder().encodeToString(bytes);

					// Gerer cookie, mettre le token dans le cookie//
					Cookie ParkfastCookie = new Cookie("Parkme", token);
					// cookie valable 15minutes
					ParkfastCookie.setMaxAge(15 * 60);
					// ajouter cookie au navigateur
					response.addCookie(ParkfastCookie);

					// Mettre les informations en session
					session.setAttribute("nom", usertab.get(0).getNom());
					session.setAttribute("prenom", usertab.get(0).getPrenom());
					session.setAttribute("email", usertab.get(0).getEmail());
					session.setAttribute("date_inscription", usertab.get(0).getDate_inscription().split(" ")[0]);
					session.setAttribute("mot_de_passe", usertab.get(0).getPassword().substring(0, 10));
					session.setAttribute("id_user", usertab.get(0).getId_utilisateur());
					session.setAttribute("isconnected", 1);
					session.setAttribute("token", token);

					
					// rediriger vers la page park
					response.sendRedirect(request.getContextPath() + "/Park");
				} else {
					// si l'utilisateur n'est pas trouvé
					request.setAttribute("erreur_connexion", 1);
					doGet(request, response);
				}
			} // (fin)si on appuie sur le bouton
		} else {
			// si la verif pattern ne passe pas
			request.setAttribute("erreur_connexion", 1);
			doGet(request, response);
		}
	}

}
