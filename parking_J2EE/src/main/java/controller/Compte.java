package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Place_parkingDao;
import dao.VoituresDao;
import modele.ParkingCookie;

/**
 * Servlet implementation class Compte
 */
@WebServlet("/Compte")
public class Compte extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Compte() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// recuperer session
		HttpSession session = request.getSession();
		//recuperer le token en session
		String token=String.valueOf(session.getAttribute("token"));
		//recuperer l'id utilisateur
		int id_user=(int)(session.getAttribute("id_user"));
		
		//on utilise la fonction qui va recuperer le cookie
		String cookie=ParkingCookie.recupererCookie(request,token);
		if(cookie.equals(token)) {
		
		//r�cup�rer les informations de place, etage etc.. place attribu�e
		
		//instancier Place_parkingDao et setAttribute
		Place_parkingDao newPlace=new Place_parkingDao();
		
		request.setAttribute("informationsPlaceParking", newPlace.finbyIdUtilisateur(id_user));
		
		//instancier VoituresDao et setAttribute
		VoituresDao newVoiture=new VoituresDao();
		
		//Si l'utilisateur dispose d'au moins un v�hicule
		if(newVoiture.findByIdUtilisateur(id_user).size()!=0){
		request.setAttribute("listVoitures", newVoiture.findByIdUtilisateur(id_user));
		
		//recuperer le dernier vehicule utilis� (tableau.get(taille du tableau moins 1)
		request.setAttribute("derniereVoiture", newVoiture.findByIdUtilisateur(id_user).get(newVoiture.findByIdUtilisateur(id_user).size()-1));
		
		//(fin) Si l'utilisateur dispose de v�hicule
		}
		
		
			
	
		request.getRequestDispatcher("jsp/compte.jsp").forward(request, response);
		//renvoit vers la page login si le token dans le cookie n'est pas reconnu
		}else {
			response.sendRedirect(request.getContextPath() + "/Deconnexion");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// recuperer session
				HttpSession session = request.getSession();
				//recuperer le token en session
				String token=String.valueOf(session.getAttribute("token"));
				//donner la valeur 0 � l'utilisateur (necessaire pour liberer la place)
				int id_user=0;
				
				//on utilise la fonction qui va recuperer le cookie
				String cookie=ParkingCookie.recupererCookie(request,token);
				if(cookie.equals(token)) {
					
					if(request.getParameter("libererPlace")!=null) {
						
						//je recupere l'id_place_parking que j'ai mis dans la value du bouton libererPlace
						int idPlaceParking=Integer.valueOf(request.getParameter("libererPlace"));
						
						//instancier Place_parkingDao et lib�rer la place de parking
						Place_parkingDao newPlace=new Place_parkingDao();
						newPlace.UpdateUtilisateur( idPlaceParking,id_user);
						
					}
					//si tout se passe bien
					doGet(request, response);
					//si le cookie n'est pas trouv� ou ne correspond pas
				}else {
					response.sendRedirect(request.getContextPath() + "/Deconnexion");
				}
		
		
	}

}
