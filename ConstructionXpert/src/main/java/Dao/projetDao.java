package Dao;

import java.sql.SQLException;
import java.util.ArrayList;

import Metier.Projet;

public interface projetDao {

    void addProjet(Projet projet) throws SQLException, ClassNotFoundException;
    ArrayList<Projet> showProjet() throws SQLException, ClassNotFoundException;
    void editProjet(Projet projet) throws SQLException, ClassNotFoundException;
    void deleteProjet(int id_Proj) throws SQLException;
    Projet selectBiId(int id) throws SQLException, ClassNotFoundException;



}
