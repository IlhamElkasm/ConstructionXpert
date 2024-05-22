package Web.Projet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ProjetDaoImpl;
import Metier.Projet;
import jakarta.servlet.annotation.WebServlet;

/**
 * Servlet implementation class CreerProjet
 */

@WebServlet(name = "add_Projet", value = "/add_Projet")
public class CreerProjet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        this.getServletContext().getRequestDispatcher("/Creer_Projet.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nom_proj = request.getParameter("nom_proj");
		String description = request.getParameter("description");
		String date_debut = request.getParameter("date_debut");
		String date_fin = request.getParameter("date_fin");
        Double budget = Double.valueOf(request.getParameter("budget"));

        ProjetDaoImpl ProjetDao = new ProjetDaoImpl();
		Projet projet = new Projet(nom_proj,description, date_debut, date_fin,budget);
		
		  try {
	            ProjetDao.addProjet(projet);
	        } catch (SQLException e) {
	            throw new RuntimeException(e);
	        } catch (ClassNotFoundException e) {
	            throw new RuntimeException(e);
	        }


	        response.sendRedirect("Afficherprojet");
	}

}
