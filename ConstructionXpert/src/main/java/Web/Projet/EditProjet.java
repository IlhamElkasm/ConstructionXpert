package Web.Projet;

import Dao.ProjetDaoImpl;
import Metier.Projet;
import jakarta.servlet.annotation.WebServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "editProjet", value = "/editProjet")
public class editProjet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id_Proj = Integer.valueOf(request.getParameter("id_Proj"));
        ProjetDaoImpl projetDAO = new ProjetDaoImpl();
        try {
            Projet projet = projetDAO.selectBiId(id_Proj);
            request.setAttribute("projet", projet);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/edit_projet.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //appele de aafichage de list
        Integer id_Proj = Integer.valueOf(request.getParameter("id_Proj"));
        String nom_proj = request.getParameter("nom_proj");
        String description = request.getParameter("description");
        String date_debut = request.getParameter("date_debut");
        String date_fin = request.getParameter("date_fin");
        Double budget = Double.valueOf(request.getParameter("budget"));

        Projet projet = new Projet(id_Proj, nom_proj, description, date_debut, date_fin, budget);
        ProjetDaoImpl projetDAO = new ProjetDaoImpl();
        try {
            projetDAO.editProjet(projet);
            request.setAttribute("shows", projetDAO.showProjet());
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("Afficherprojet");
    }
}
