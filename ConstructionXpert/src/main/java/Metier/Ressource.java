package Metier;

public class Ressource {

    private int id_Ress;
    private String nom_Ress;
    private String typee;
    private float quantité;
   private String Nom_fournisseur;
   private String cin_fournisseur;
   private int id_Tach;


    public Ressource(String cin_fournisseur, int id_Tach, String nom_fournisseur, String nom_Ress, float quantité, String typee) {
        this.cin_fournisseur = cin_fournisseur;
        this.id_Tach = id_Tach;
        Nom_fournisseur = nom_fournisseur;
        this.nom_Ress = nom_Ress;
        this.quantité = quantité;
        this.typee = typee;
    }
    public Ressource(String cin_fournisseur, int id_Ress, int id_Tach, String nom_fournisseur, String nom_Ress, float quantité, String typee) {
        this.cin_fournisseur = cin_fournisseur;
        this.id_Ress = id_Ress;
        this.id_Tach = id_Tach;
        Nom_fournisseur = nom_fournisseur;
        this.nom_Ress = nom_Ress;
        this.quantité = quantité;
        this.typee = typee;
    }

    public String getCin_fournisseur() {
        return cin_fournisseur;
    }

    public void setCin_fournisseur(String cin_fournisseur) {
        this.cin_fournisseur = cin_fournisseur;
    }

    public int getId_Ress() {
        return id_Ress;
    }

    public void setId_Ress(int id_Ress) {
        this.id_Ress = id_Ress;
    }

    public int getId_Tach() {
        return id_Tach;
    }

    public void setId_Tach(int id_Tach) {
        this.id_Tach = id_Tach;
    }

    public String getNom_fournisseur() {
        return Nom_fournisseur;
    }

    public void setNom_fournisseur(String nom_fournisseur) {
        Nom_fournisseur = nom_fournisseur;
    }

    public String getNom_Ress() {
        return nom_Ress;
    }

    public void setNom_Ress(String nom_Ress) {
        this.nom_Ress = nom_Ress;
    }

    public float getQuantité() {
        return quantité;
    }

    public void setQuantité(float quantité) {
        this.quantité = quantité;
    }

    public String getTypee() {
        return typee;
    }

    public void setTypee(String typee) {
        this.typee = typee;
    }

    @Override
    public String toString() {
        return "Ressource{" +
                "cin_fournisseur=" + cin_fournisseur +
                ", id_Ress=" + id_Ress +
                ", nom_Ress='" + nom_Ress + '\'' +
                ", typee='" + typee + '\'' +
                ", quantité=" + quantité +
                ", Nom_fournisseur=" + Nom_fournisseur +
                ", id_Tach=" + id_Tach +
                '}';
    }
}
