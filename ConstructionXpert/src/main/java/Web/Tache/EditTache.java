package Web.Tache;

import Dao.ProjetDaoImpl;
import Dao.TacheDaoImpl;
import Metier.Projet;
import Metier.Tache;
import jakarta.servlet.annotation.WebServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "EditTache", value = "/EditTache")
public class EditTache extends HttpServlet{

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            Integer id_Tach = Integer.valueOf(request.getParameter("id_Tach"));
            TacheDaoImpl tacheDAO = new TacheDaoImpl();
            try {
                Tache tache = tacheDAO.selectBiIdT(id_Tach);
                request.setAttribute("tache", tache);
            } catch (SQLException | ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
            this.getServletContext().getRequestDispatcher("/EditTache.jsp").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            //appele de aafichage de list
            Integer id_Tach = Integer.valueOf(request.getParameter("id_Tach"));
            String date_debut = request.getParameter("date_debut");
            String date_fin = request.getParameter("date_fin");
            String description = request.getParameter("description");
            String statut =request.getParameter("statut");
            Integer id_Proj = Integer.valueOf(request.getParameter("id_Proj"));

            Tache tache = new Tache(id_Tach, date_debut, date_fin,description, statut,id_Proj);
            TacheDaoImpl tacheDAO = new TacheDaoImpl();
            try {
                tacheDAO.EditTache(tache);
                request.setAttribute("AffiTa", tacheDAO.AfficheTache());
            } catch (SQLException e) {
                e.printStackTrace();

            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
            response.sendRedirect("AfficherTache");
        }
}
