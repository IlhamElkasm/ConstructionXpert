package Metier;

public class Projet {

	private int id_Proj;
	private String nom_proj;
	private String description;
	private String date_debut;
	private String date_fin;
	private Double budget;
	
	
	public Projet() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Projet(Integer id_Proj, String nom_proj, String description, String date_debut, String date_fin, double budget) {
		this.id_Proj = id_Proj;
		this.nom_proj = nom_proj;
		this.description = description;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.budget = budget;
	}


	public Projet(String nom_proj, String description, String date_debut, String date_fin, double budget) {
		super();
		this.nom_proj = nom_proj;
		this.description = description;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.budget = budget;
	}



	public String getNom_proj() {
		return nom_proj;
	}

	public void setNom_proj(String nom_proj) {
		this.nom_proj = nom_proj;
	}

	public int getId_Proj() {
		return id_Proj;
	}


	public void setId_Proj(int id_Proj) {
		this.id_Proj = id_Proj;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
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

	public double getBudget() {
		return budget;
	}

	public void setBudget(double budget) {
		this.budget = budget;
	}

	@Override
	public String toString() {
		return "Projet [id_Proj=" + id_Proj + ", description=" + description + ", date_debut=" + date_debut
				+ ", date_fin=" + date_fin + ", budget=" + budget + "]";
	}
	
	
	
}