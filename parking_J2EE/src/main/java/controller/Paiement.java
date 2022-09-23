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
import modele.Utilisateur;
import modele.Historique;

/**
 * Servlet implementation class Paiement
 */
@WebServlet("/Paiement")
public class Paiement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Paiement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		
		//recuperer le token
				String token=String.valueOf(session.getAttribute("token"));
				
				String cookie=ParkingCookie.recupererCookie(request,token);
				//check si le cookie correspond à celui présent en session
				if(cookie.equals(token)) {
		//recuperer la sommedû
		request.setAttribute("sommeApayer", session.getAttribute("Apayer"));
		
		request.getRequestDispatcher("jsp/paiement.jsp").forward(request, response);
				}else {
					response.sendRedirect(request.getContextPath() + "/Deconnexion");
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		//ce submit sera déclanché en js  si  succès du payment paypal
		//recuperer id_user
		int id_user= (int)session.getAttribute("id_user");
		if(request.getParameter("validPayment")!=null) {
		//creer un utilisateur (pour y mettre dans l'historique)
		Utilisateur newUser= new Utilisateur();
		
		newUser.setId_utilisateur(id_user);
		
		Historique newHistorique=new Historique();
		
		newHistorique.setIsActive_Historique(0);
		newHistorique.setUtilisateur(newUser);
		
		HistoriqueDao newHistoriqueDao= new HistoriqueDao();
		
		newHistoriqueDao.UpdateisActiveHistorique(newHistorique);
		//enlever le prix à payer
		session.setAttribute("Apayer",0.0);
		request.setAttribute("paymentEffectuer", 1);
		}
		
		doGet(request, response);
		
	}

}
