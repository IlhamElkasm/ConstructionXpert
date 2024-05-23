package Web.Projet;

import Dao.ProjetDaoImpl;
import jakarta.servlet.annotation.WebServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "deleteProjet", value = "/deleteProjet")
public class DeleteProject  extends HttpServlet{

    private ProjetDaoImpl projetDAO;

    public void init() throws ServletException {
        super.init();
        projetDAO = new ProjetDaoImpl();
    }
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Integer id_Proj = Integer.parseInt(request.getParameter("id_Proj"));
            try {
                projetDAO.deleteProjet(id_Proj);
                request.setAttribute("showP", projetDAO.showProjet());
            } catch (SQLException e) {
                throw new ServletException("Failed to delete projet", e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
            request.getRequestDispatcher("/Afficherprojet").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/Afficherprojet").forward(request, response);
        }


}
