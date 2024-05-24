package Metier;

public class Tache {

    private int id_Tach;
    private String description;
    private String date_debut;
    private String date_fin;
    private String statut;
   private  Integer id_Proj;

    public Tache(String date_debut, String date_fin, String description, Integer id_Proj, String statut) {
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.description = description;
        this.id_Proj = id_Proj;
        this.statut = statut;
    }

    public Tache(int id_Tach,String description, String date_debut, String date_fin, Integer id_Proj, String statut) {
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.description = description;
        this.id_Proj = id_Proj;
        this.id_Tach = id_Tach;
        this.statut = statut;
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

    public String getStatut() {
        return statut;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }

    @Override
    public String toString() {
        return "Tache{" +
                "date_debut='" + date_debut + '\'' +
                ", id_Tach=" + id_Tach +
                ", description='" + description + '\'' +
                ", date_fin='" + date_fin + '\'' +
                ", statut='" + statut + '\'' +
                ", id_Proj=" + id_Proj +
                '}';
    }
}
