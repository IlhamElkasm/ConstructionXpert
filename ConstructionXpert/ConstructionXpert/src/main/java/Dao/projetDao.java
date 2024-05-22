package Dao;

import java.sql.SQLException;
import java.util.ArrayList;

import Metier.Projet;

public interface projetDao {

    void addProjet(Projet projet) throws SQLException, ClassNotFoundException;
    ArrayList<Projet> showProjet() throws SQLException, ClassNotFoundException;


}
