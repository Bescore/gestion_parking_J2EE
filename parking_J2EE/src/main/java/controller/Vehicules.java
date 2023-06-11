package controller;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Place_parkingDao;
import dao.VoituresDao;
import modele.ParkingCookie;
import modele.Utilisateur;
import modele.Voitures;

/**
 * Servlet implementation class Vehicules
 */
@WebServlet("/vehicules")
public class Vehicules extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Vehicules() {
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

		HttpSession session = request.getSession();
		// recuperer le token en session
		String token = String.valueOf(session.getAttribute("token"));

		// on utilise la fonction qui va recuperer le cookie
		String cookie = ParkingCookie.recupererCookie(request, token);
		if (cookie.equals(token)) {

			// recuperer l'id utilisateur
			int id_user = (int) (session.getAttribute("id_user"));
			// récupérer les informations de place, etage etc.. place attribuée

			// instancier VoituresDao et setAttribute
			VoituresDao newVoiture = new VoituresDao();

			// Si l'utilisateur dispose d'au moins un véhicule
			if (newVoiture.findByIdUtilisateur(id_user).size() != 0) {
				request.setAttribute("voitures", newVoiture.findByIdUtilisateur(id_user));

			}

			request.getRequestDispatcher("jsp/vehicules.jsp").forward(request, response);
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
		// recuperer le token en session
		String token = String.valueOf(session.getAttribute("token"));

		// on utilise la fonction qui va recuperer le cookie
		String cookie = ParkingCookie.recupererCookie(request, token);
		if (cookie.equals(token)) {

			// recuperer les informations du formulaire au submit
			String marque = request.getParameter("marque");
			String modele = request.getParameter("modele");

			if (Pattern.matches("^[a-zA-Z- ]+$", marque)&& !marque.isEmpty() && Pattern.matches("^[a-zA-Z-0-9 ]+$", modele)&& !modele.isEmpty()) {

				// recuperer l'id utilisateur
				int id_user = (int) (session.getAttribute("id_user"));

				// creer un nouvel utilisateur
				Utilisateur newUser = new Utilisateur();
				newUser.setId_utilisateur(id_user);


				// Instancier un modele voiture
				Voitures newVoiture = new Voitures();
				
				// instancier VoituresDao et setAttribute
				VoituresDao newVoitureDao = new VoituresDao();
				

				newVoiture.setMarque(marque);
				newVoiture.setModele(modele);
				newVoiture.setUtilisateur(newUser);
				
				
				if (request.getParameter("ajouter_voiture") != null) {
					
					//ajouter la voiture
					newVoitureDao.Create(newVoiture);
					System.out.println("j'ai ajouté");
					
				}
				

			}

			doGet(request, response);
		} else {
			response.sendRedirect(request.getContextPath() + "/Deconnexion");
		}
	}

}
