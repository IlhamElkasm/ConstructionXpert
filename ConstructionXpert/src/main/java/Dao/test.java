package Dao;

import Metier.Tache;

import java.sql.SQLException;

public class test {


    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        TacheDaoImpl tacheDa = new TacheDaoImpl();

        Tache tache = new Tache("21/06/2012", "12/01/2020","hghjhjh",11, "To Do");
        tacheDa.CreerTache(tache);
        System.out.printf(tache.toString());
    }






}
