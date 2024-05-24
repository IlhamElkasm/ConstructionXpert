package Dao;

import Metier.Projet;
import Metier.Ressource;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ressourceDao {

    void addRessource(Ressource ressource) throws SQLException, ClassNotFoundException;
    ArrayList<Ressource> AfficheRessource() throws SQLException, ClassNotFoundException;
    void editRessource(Ressource ressource) throws SQLException, ClassNotFoundException;
    void deleteRessource(int id_Ress) throws SQLException;
    Projet selectBiId(int id_Ress) throws SQLException, ClassNotFoundException;
}
