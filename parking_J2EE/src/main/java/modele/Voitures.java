package modele;

public class Voitures {

	private int Id_voitures;
	private String marque;
	private String modele;
	private Utilisateur utilisateur;
	private String date_heure;
	private int isActive_voiture;

	
	
	public Voitures() {
		super();
	}

	public Voitures(int id_voitures, String marque, String modele, Utilisateur utilisateur, String date_heure,
			int isActive_voiture) {
		super();
		Id_voitures = id_voitures;
		this.marque = marque;
		this.modele = modele;
		this.utilisateur = utilisateur;
		this.date_heure = date_heure;
		this.isActive_voiture = isActive_voiture;
	}



	public int getId_voitures() {
		return Id_voitures;
	}

	public void setId_voitures(int id_voitures) {
		Id_voitures = id_voitures;
	}

	public String getMarque() {
		return marque;
	}

	public void setMarque(String marque) {
		this.marque = marque;
	}

	public String getModele() {
		return modele;
	}

	public void setModele(String modele) {
		this.modele = modele;
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public String getDate_heure() {
		return date_heure;
	}

	public void setDate_heure(String date_heure) {
		this.date_heure = date_heure;
	}
	

	public int getIsActive_voiture() {
		return isActive_voiture;
	}

	public void setIsActive_voiture(int isActive_voiture) {
		this.isActive_voiture = isActive_voiture;
	}

	@Override
	public String toString() {
		return "Voitures [Id_voitures=" + Id_voitures + ", marque=" + marque + ", modele=" + modele + ", utilisateur="
				+ utilisateur + ", date_heure=" + date_heure + ", isActive_voiture=" + isActive_voiture + "]";
	}

	

	
}
