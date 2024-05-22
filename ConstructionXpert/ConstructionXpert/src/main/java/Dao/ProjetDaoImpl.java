package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Metier.Projet;

public class ProjetDaoImpl implements projetDao {

	@Override
	  public void addProjet(Projet projet) throws SQLException, ClassNotFoundException {
        Connection connection = Connection_JDBC.getConnection();
        String sql = "INSERT INTO projets (nom_proj, description, date_debut, date_fin, budget)\n" +
                "VALUES ( ?, ?, ?, ?, ?);";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            
            statement.setString(1, projet.getNom_proj());
            statement.setString(2, projet.getDescription());
            statement.setString(3, projet.getDate_debut());
            statement.setString(4, projet.getDate_fin());
            statement.setDouble(5, projet.getBudget());
            statement.executeUpdate();
        }

    }

	@Override
	  public ArrayList<Projet> showProjet() throws SQLException, ClassNotFoundException {
        Connection connection = Connection_JDBC.getConnection();
        ArrayList<Projet> projets = new ArrayList<>();
        String sql = "SELECT * FROM projets";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultat = statement.executeQuery()) {
            while (resultat.next()) {
                Integer  id_Proj =resultat.getInt("id_Proj");
                String nom_proj = resultat.getString("nom_proj");
                String description = resultat.getString("description");
                String date_debut = resultat.getString("date_debut");
                String date_fin = resultat.getString("date_fin");
                Double budget = resultat.getDouble("budget");

                Projet projet = new Projet(id_Proj,nom_proj, description, date_debut, date_fin, budget);
                projets.add(projet);
            }
        }
        return projets;
    }
}
