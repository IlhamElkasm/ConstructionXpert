package Metier;

public class Tache {

    private int id_Tach;
    private String date_debut;
    private String date_fin;
    private String description;
    private String statu;
   private  Integer id_Proj;

    public Tache(String date_debut, String date_fin, String description, Integer id_Proj, String statu) {
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.description = description;
        this.id_Proj = id_Proj;
        this.statu = statu;
    }

    public Tache( int id_Tach, String date_debut, String date_fin,String description,String statu, Integer id_Proj) {
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.description = description;
        this.id_Proj = id_Proj;
        this.id_Tach = id_Tach;
        this.statu = statu;
    }

    public Tache() {
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.description = description;
        this.id_Proj = id_Proj;
        this.id_Tach = id_Tach;
        this.statu = statu;
    }

    public String getDate_debut() {
        return date_debut;
    }

    public void setDate_debut(String date_debut) {
        this.date_debut = date_debut;
    }

    public String getDate_fin() {
        return date_fin;
    }

    public void setDate_fin(String date_fin) {
        this.date_fin = date_fin;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId_Tach() {
        return id_Tach;
    }

    public void setId_Tach(int id_Tach) {
        this.id_Tach = id_Tach;
    }

    public Integer getId_Proj() {
        return id_Proj;
    }

    public void setId_Proj(Integer id_Proj) {
        this.id_Proj = id_Proj;
    }

    public String getStatu() {
        return statu;
    }

    public void setStatu(String statut) {
        this.statu = statut;
    }

    @Override
    public String toString() {
        return "Tache{" +
                "date_debut='" + date_debut + '\'' +
                ", id_Tach=" + id_Tach +
                ", description='" + description + '\'' +
                ", date_fin='" + date_fin + '\'' +
                ", statut='" + statu + '\'' +
                ", id_Proj=" + id_Proj +
                '}';
    }
}
