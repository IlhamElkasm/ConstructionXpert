package Web.Tache;

import Dao.ProjetDaoImpl;
import Dao.TacheDaoImpl;
import jakarta.servlet.annotation.WebServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteTache", value = "/DeleteTache")
public class DeleteTache extends HttpServlet{

        private TacheDaoImpl tacheDAO;

        public void init() throws ServletException {
            super.init();
            tacheDAO = new TacheDaoImpl();
        }
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Integer id_Tach = Integer.parseInt(request.getParameter("id_Tach"));
            try {
                tacheDAO.DeleteTache(id_Tach);
                request.setAttribute("AffiTa", tacheDAO.AfficheTache());
            } catch (SQLException e) {
                throw new ServletException("Failed to delete projet", e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
            request.getRequestDispatcher("/AfficherTache").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/AfficherTache").forward(request, response);
        }
}
