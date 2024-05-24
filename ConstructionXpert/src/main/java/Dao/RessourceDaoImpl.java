package Dao;

import Metier.Projet;
import Metier.Ressource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class RessourceDaoImpl implements ressourceDao{


    @Override
    public void addRessource(Ressource ressource) throws SQLException, ClassNotFoundException {
        Connection connection = Connection_JDBC.getConnection();
        String sql = "INSERT INTO Tâches (nom_Ress,typee,quantité,Nom_fournisseur,cin_fournisseur,id_Tach)\n" +
                "VALUES ( ?, ?, ?, ?, ?, ?);";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, ressource.getNom_Ress());
            statement.setString(2, ressource.getTypee());
            statement.setFloat(3, ressource.getQuantité());
            statement.setString(4, ressource.getNom_fournisseur());
            statement.setString(5, ressource.getCin_fournisseur());
            statement.setInt(6, ressource.getId_Tach());
            statement.executeUpdate();
        }
    }

    @Override
    public ArrayList<Ressource> AfficheRessource() throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public void editRessource(Ressource ressource) throws SQLException, ClassNotFoundException {

    }

    @Override
    public void deleteRessource(int id_Ress) throws SQLException {

    }

    @Override
    public Projet selectBiId(int id_Ress) throws SQLException, ClassNotFoundException {
        return null;
    }
}
