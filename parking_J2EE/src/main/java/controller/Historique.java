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
			request.setAttribute("historique",newHistoriqueDao.findByIdUtilisateur(id_user));
			
			
			//Calculer et Afficher la somme dû grâce à une boucle
			
			//initialiser une variable
			double total=0;
			for (modele.Historique element : newHistoriqueDao.findByIdUtilisateur(id_user)) {
				
				// la fonction split va mettre le format 00:00:00 sous forme de tableau en utilisant ":" comme séparateur
				// de ce fait on recupere [00,00,00], on recupere les valeurs avec leur index de tableau.. classique
				//ensuite on en fait ce qu'on veut ici je parse les valeurs en int
				int heures= Integer.valueOf(element.getDuree_occupation().split(":")[0]) ;
				int minutes=Integer.valueOf(element.getDuree_occupation().split(":")[1]) ;
				int	secondes=Integer.valueOf(element.getDuree_occupation().split(":")[2]) ;
				
				
				//Calcule de toute les valeurs en seconde
				//1h= 3600secondes,1minutes= 60secondes,1secondes= 1secondes
				int heuresEnSeconde=heures*3600;
				int minutesESeconde=minutes*60;
				int	secondeEnSecondes=secondes;
				
				
				//addition, 0.6 centimes la minute = 0.001 la secondes
				double addition=(heuresEnSeconde+minutesESeconde+secondeEnSecondes)*0.001;
				
				//on arrondie la valeur et la passe à la variable total
				total+=addition;
			}
			
			//recuperer total et l'arrondir à 2 décimale, puis l'envoyer au jsp
			request.setAttribute("sommeAPayer",  Math.round(total*100.0)/100.0);       
			
			//mettre la somme en session
			session.setAttribute("Apayer", Math.round(total*100.0)/100.0);
			
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
