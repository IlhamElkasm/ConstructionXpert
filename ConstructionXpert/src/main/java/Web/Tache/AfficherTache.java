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

@WebServlet(name = "AfficherTache", value = "/AfficherTache")
public class AfficherTache  extends HttpServlet{

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            TacheDaoImpl Affiche=new TacheDaoImpl();
            try {
                request.setAttribute("AffiTa", Affiche.AfficheTache());
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
            this.getServletContext().getRequestDispatcher("/AfficherTache.jsp").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // TODO Auto-generated method stub
        }
}
