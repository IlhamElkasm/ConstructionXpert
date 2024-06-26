package Dao;

import Metier.Projet;
import Metier.Tache;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TacheDaoImpl implements tacheDao{

    @Override
    public void CreerTache(Tache tache) throws SQLException, ClassNotFoundException {
        Connection connection = Connection_JDBC.getConnection();
        String sql = "INSERT INTO tâches (date_debut, date_fin, description,statu,id_Proj) " +
                "VALUES ( ?, ?, ?, ?, ?)";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(2, tache.getDate_debut());
            statement.setString(3, tache.getDate_fin());
            statement.setString(1, tache.getDescription());
            statement.setString(4, tache.getStatu());
            statement.setInt(5, tache.getId_Proj());
            statement.executeUpdate();
        }
    }

    @Override
    public ArrayList<Tache> AfficheTache() throws SQLException, ClassNotFoundException {
        Connection connection = Connection_JDBC.getConnection();
        ArrayList<Tache> taches = new ArrayList<>();
        String sql = "SELECT * FROM Tâches";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultat = statement.executeQuery()) {
            while (resultat.next()) {
                Integer id_Tach =resultat.getInt("id_Tach");
                String date_debut = resultat.getString("date_debut");
                String date_fin = resultat.getString("date_fin");
                String description = resultat.getString("description");
                String statu = resultat.getString("statu");
                Integer id_Proj = resultat.getInt("id_Proj");

                Tache tache = new Tache(id_Tach,description,date_debut,date_fin,statu,id_Proj);
                taches.add(tache);
            }
        }
        return taches;
    }

    @Override
    public void EditTache(Tache tache) throws SQLException, ClassNotFoundException {

        Connection connection = Connection_JDBC.getConnection();
        String sql = "UPDATE Tâches SET description=?, date_debut=?, date_fin=?, statu=? , id_Proj= ?WHERE id_Tach" +
                "Proj=?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, tache.getDescription());
            statement.setString(2, tache.getDate_debut());
            statement.setString(3, tache.getDate_fin());
            statement.setString(4, tache.getStatu());
            statement.setInt(6, tache.getId_Proj());
            statement.setInt(7, tache.getId_Tach());
            statement.executeUpdate();
        }
    }

    @Override
    public void DeleteTache(int id_Tach) throws SQLException {
        Connection connection = Connection_JDBC.getConnection();
        String sql = "DELETE FROM Tâches WHERE id_Tach=?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id_Tach);
            statement.executeUpdate();
        }
    }

    @Override
    public Tache selectBiIdT(int id_Tach) throws SQLException, ClassNotFoundException {
        Tache tache = null;
        Connection connection = Connection_JDBC.getConnection();
        String sql = "SELECT * FROM Tâches WHERE id_Tach = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_Tach);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            tache = new Tache(
                    resultSet.getInt("id_Tach"),
                    resultSet.getString("date_debut"),
                    resultSet.getString("date_fin"),
                    resultSet.getString("description"),
                    resultSet.getString("statu"),
                    resultSet.getInt("id_Proj")
            );
        }
        return tache;
    }
}
