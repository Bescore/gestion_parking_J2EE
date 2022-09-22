package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HistoriqueDao;
import modele.ParkingCookie;

/**
 * Servlet implementation class Historique
 */
@WebServlet("/Historique")
public class Historique extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Historique() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//session
		HttpSession session = request.getSession();
		//recuperer l'id_user
		int id_user=(int)session.getAttribute("id_user");
		//recuperer le token
		String token=String.valueOf(session.getAttribute("token"));
		
		String cookie=ParkingCookie.recupererCookie(request,token);
		//check si le cookie correspond à celui présent en session
		if(cookie.equals(token)) {
			
			//instancier historiqueDao
			HistoriqueDao newHistoriqueDao=new HistoriqueDao();
			//declencher le findby
			request.setAttribute("historique",newHistoriqueDao.findByIdUtilisateur());
			
			request.getRequestDispatcher("jsp/historique.jsp").forward(request, response);
			//si le cookie n'est pas trouvé
		}else {
			response.sendRedirect(request.getContextPath() + "/Deconnexion");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
