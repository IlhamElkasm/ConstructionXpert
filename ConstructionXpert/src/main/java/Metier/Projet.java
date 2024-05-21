package Metier;

public class Projet {

	private int id_Proj;
	private String description;
	private String date_debut;
	private String date_fin;
	private float budget;
	
	
	public Projet() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Projet(String description, String date_debut, String date_fin, float budget) {
		super();
		this.description = description;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.budget = budget;
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


	public float getBudget() {
		return budget;
	}


	public void setBudget(float budget) {
		this.budget = budget;
	}


	@Override
	public String toString() {
		return "Projet [id_Proj=" + id_Proj + ", description=" + description + ", date_debut=" + date_debut
				+ ", date_fin=" + date_fin + ", budget=" + budget + "]";
	}
	
	
	
}