package Web.Tache;

import Dao.ProjetDaoImpl;
import Dao.TacheDaoImpl;
import Metier.Projet;
import Metier.Tache;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "CreerTache", value = "/CreerTache")
public class CreerTache extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProjetDaoImpl show=new ProjetDaoImpl();
        try {
            request.setAttribute("shows", show.showProjet());
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/CreerTache.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     Tache tachee = new Tache();
        String description = request.getParameter("description");
        String date_debut = request.getParameter("date_debut");
        String date_fin = request.getParameter("date_fin");
        String statut = request.getParameter("statut");
        Integer id_Proj = Integer.parseInt(request.getParameter("id_Proj"));
        tachee.setId_Proj(Integer.parseInt(request.getParameter("id_Proj")));
        System.out.println("lllllllllll"+id_Proj);


        TacheDaoImpl tacheDao = new TacheDaoImpl();
        Tache tache = new Tache(description, date_debut, date_fin,id_Proj,statut);

        try {
            tacheDao.CreerTache(tache);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("AfficherTache?id_projet=" + id_Proj);

        //this.getServletContext().getRequestDispatcher("AfficherTache").forward(request, response);

    }

}
