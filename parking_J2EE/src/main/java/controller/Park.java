package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HistoriqueDao;
import dao.Place_parkingDao;
import dao.VoituresDao;
import modele.Historique;
import modele.ParkingCookie;
import modele.Place_parking;
import modele.Utilisateur;
import modele.Voitures;

/**
 * Servlet implementation class Park
 */
@WebServlet("/Park")
public class Park extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Park() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//Afficher les places de parking
		
		//instancier place-parkingDao
		Place_parkingDao newPlaceDao=new Place_parkingDao();
		
		//faire un read et setAttribute du resultat
		request.setAttribute("placeParkingTab", newPlaceDao.Read());
		
		
		request.getRequestDispatcher("jsp/park.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		//recuperer marque
		String marque =request.getParameter("marque");
		//recuperer modele
		String modele =request.getParameter("modele");
		//recuperer le token en session
		String token=String.valueOf(session.getAttribute("token"));
		
		
		
		if(request.getParameter("valider_choix_de_place")!=null && marque!=null&& !marque.isEmpty()&&
				modele!=null&&!modele.isEmpty()&&request.getParameter("choix_place")!=null) {
			
			//on utilise la fonction qui va recuperer le cookie
			String cookie=ParkingCookie.recupererCookie(request,token);
			if(cookie.equals(token)) {
				//recuperer id place de parking
				int idPlaceParking=Integer.valueOf(request.getParameter("choix_place"));
				//recuperer l'id utilisateur
				int id_user=(int)(session.getAttribute("id_user"));
				
				/*verifie si l'utilisateur est détenteur d'une place  si non il execute le code, 
				si oui il redirige vers la page mon compte*/
				//Instancier Place_parkingDao(pour l'update)
				Place_parkingDao newPlaceDao=new Place_parkingDao();
				
				if(newPlaceDao.finbyIdUtilisateur(id_user)==null) {
				//instancier un utilisateur (pour l'y ajouter à Voitures)
				Utilisateur newUser=new Utilisateur();
				
				newUser.setId_utilisateur(id_user);
				
				
				//Instancier un modele voiture
				Voitures newVoiture=new Voitures();
			
				newVoiture.setMarque(marque);
				newVoiture.setModele(modele);
				newVoiture.setUtilisateur(newUser);
				
				//Instancier VoitureDao(pour realiser le creater)
				VoituresDao newVoitureDao=new VoituresDao();
				
				newVoitureDao.Create(newVoiture);
				
				//executer une autre méthode de parkingdao
				newPlaceDao.UpdateUtilisateur(idPlaceParking, id_user);
				
				//instancier place_parking
				Place_parking newPlace=new Place_parking();
				newPlace.setId_place_parking(idPlaceParking);
				
				//Ajouter la place à l'historique
				Historique newHistorique=new Historique();
				
				newHistorique.setUtilisateur(newUser);
				newHistorique.setPlace_parking(newPlace);
				
				//instancier historiqueDao(pour le create dans l'historique)
				HistoriqueDao newHistoriqueDao=new HistoriqueDao();
				
				newHistoriqueDao.Create(newHistorique);
				}
				response.sendRedirect(request.getContextPath() + "/Compte");
				//si le token ne correspond pas on déconnecte l'utilisateur
			}else {
				response.sendRedirect(request.getContextPath() + "/Deconnexion");
			}
			
			//si le pattern ne correspond pas ou qu'il manque des informations dans les champs
		}else {
			doGet(request, response);
		}
	}
}
