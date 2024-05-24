package Dao;



import Metier.Tache;

import java.sql.SQLException;
import java.util.ArrayList;

public interface tacheDao {
    Tache CreerTache(Tache tache) throws SQLException, ClassNotFoundException;
    ArrayList<Tache> AfficheTache() throws SQLException, ClassNotFoundException;
    void EditTache(Tache tache) throws SQLException, ClassNotFoundException;
    void DeleteTache(int id_Tach) throws SQLException;
    Tache selectBiId(int id) throws SQLException, ClassNotFoundException;
}
