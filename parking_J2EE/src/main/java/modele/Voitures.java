package modele;

public class Voitures {

	private int Id_voitures;
	private String marque;
	private String modele;
	private Utilisateur utilisateur;
	private String date_heure;

	public Voitures() {
		super();
	}

	public Voitures(int id_voitures, String marque, String modele, Utilisateur utilisateur) {
		super();
		Id_voitures = id_voitures;
		this.marque = marque;
		this.modele = modele;
		this.setUtilisateur(utilisateur);
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

	@Override
	public String toString() {
		return "Voitures [Id_voitures=" + Id_voitures + ", marque=" + marque + ", modele=" + modele + ", utilisateur="
				+ utilisateur + ", date_heure=" + date_heure + "]";
	}

	
}
