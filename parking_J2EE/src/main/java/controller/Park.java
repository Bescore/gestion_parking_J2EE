package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Place_parkingDao;

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
		HttpSession session = request.getSession();
		//Afficher les places de parking
		
		//instancier place-parkingDao
		Place_parkingDao newPlaceDao=new Place_parkingDao();
		
		//faire un read et setAttribute du resultat
		request.setAttribute("placeParkingTab", newPlaceDao.Read());
		
		System.out.println(session.getAttribute("token"));
		
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
		
		if(request.getParameter("valider_choix_de_place")!=null && marque!=null&& !marque.isEmpty()&&
				modele!=null&&!modele.isEmpty()&&request.getParameter("choix_place")!=null) {
		
		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			//si il trouve le cookie
			if (cookie.getName().equals("Parkme")) {
				//si le cookie est égale à celui contenu dans la session
				if (session.getAttribute("token").equals(cookie.getValue())) {
				
					//recuperer id place de parking
					int idPlaceParking=Integer.valueOf(request.getParameter("choix_place"));
					//recuperer la marque
					
					
					System.out.println(idPlaceParking);
					response.sendRedirect(request.getContextPath() + "/Compte");
					
				
				//si le token dans le cookie ne correspond pas on redirige vers la connexion
				}
			//(fin)si il trouve le cookie
			}
		//(fin)for
		}
		//si les champs sont vide ou empty
		}else {
			doGet(request, response);
		}
			response.sendRedirect(request.getContextPath() + "/Login");//a modifier
	}
}
