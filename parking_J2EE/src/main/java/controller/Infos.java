package controller;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UtilisateurDao;
import modele.ParkingCookie;

/**
 * Servlet implementation class Infos
 */
@WebServlet("/Infos")
public class Infos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Infos() {
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
		// session
		HttpSession session = request.getSession();

		// recuperer le token en session
		String token = String.valueOf(session.getAttribute("token"));

		// on utilise la fonction qui va recuperer le cookie
		String cookie = ParkingCookie.recupererCookie(request, token);
		if (cookie.equals(token)) {
			// je recupere les valeurs dans l'url
			String colonne = (String) request.getParameter("action");
			// j'affiche l'ancienne donnée que je recupere depuis la session
			request.setAttribute("value", session.getAttribute(colonne));
			
			//j'affiche la colonne qu'on va vouloir modifier
			request.setAttribute("colonneAmodifier",request.getParameter("action"));

			request.getRequestDispatcher("jsp/infos.jsp").forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath() + "/Deconnexion");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();

		if (request.getParameter("modifier") != null) {
			// recuperer le token en session
			String token = String.valueOf(session.getAttribute("token"));

			// on utilise la fonction qui va recuperer le cookie
			String cookie = ParkingCookie.recupererCookie(request, token);
			if (cookie.equals(token)) {
				// recuperer l'id utilisateur
				int id_user = (int) session.getAttribute("id_user");

				// je recupere les valeurs dans l'url
				String colonne = (String) request.getParameter("action");

				// je recupere la nouvelle valeur
				String nouvelleValeur = request.getParameter("ancienneValeurInput");
				// condition pour les patterns matchs
				if (colonne.equals("nom") && Pattern.matches("^[a-zA-Z- ]+$", nouvelleValeur)
						|| colonne.equals("prenom") && Pattern.matches("^[a-zA-Z- ]+$", nouvelleValeur)
						|| colonne.equals("email") && Pattern
								.matches("^[a-zA-Z0-9._%-]+[@]+[a-zA-Z0-9.-]+[.]+[a-zA-Z]{2,4}$", nouvelleValeur)) {

					// instancier dao utilisateur
					UtilisateurDao newUserDao = new UtilisateurDao();
					// declencher l'update
					newUserDao.UpdateUser(id_user, colonne, nouvelleValeur);
					//changer les valeurs en session
					session.setAttribute(colonne, nouvelleValeur);
					//message de succès
					request.setAttribute("erreur", 0);
					doGet(request, response);
				}else {
					//message echec
					request.setAttribute("erreur", 1);
					doGet(request, response);
				}
				//si le cookie ne correspond pas ou si il ne le trouve pas , le user se fait deconnnecter
			} else {
				response.sendRedirect(request.getContextPath() + "/Deconnexion");
			}
		}
	}
}
