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
import modele.Utilisateur;
import modele.Voitures;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//Instancier VoitureDao(pour realiser le creater)
		VoituresDao newVoitureDao=new VoituresDao();
		String messsage=request.getParameter("message");
		request.setAttribute("hey", null);	
		if(messsage!=null && !messsage.isEmpty()) {
			
			Utilisateur user= new Utilisateur();
			user.setId_utilisateur(1);
			
			String marque=request.getParameter("message");
			
			//Instancier un modele voiture
			Voitures newVoiture=new Voitures();
		
			newVoiture.setMarque(marque);
			newVoiture.setUtilisateur(user);
			
			
			
			
			newVoitureDao.Create(newVoiture);
			//Si l'utilisateur dispose d'au moins un véhicule
				
		}
		
		
		request.setAttribute("voiture", newVoitureDao.findByIdUtilisateur(1));

		System.out.println(request.getAttribute("hey")); 
		
			
				
		
		request.getRequestDispatcher("jsp/test.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		doGet(request, response);
	}

}
