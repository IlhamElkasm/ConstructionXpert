package Metier;

public class Tache {

    private int id_Tach;
    private String description;
    private String date_debut;
    private String date_fin;
    private String statut;
    Projet projetI;


    public Tache(String date_debut, String date_fin, String description, int id_Tach, Projet projetI, String statut) {
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.description = description;
        this.id_Tach = id_Tach;
        this.projetI = projetI;
        this.statut = statut;
    }

    public Tache(String date_debut, String date_fin, String description, Projet projetI, String statut) {
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.description = description;
        this.projetI = projetI;
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

    public Projet getProjetI() {
        return projetI;
    }

    public void setProjetI(Projet projetI) {
        this.projetI = projetI;
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
                ", projetI=" + projetI +
                '}';
    }
}
