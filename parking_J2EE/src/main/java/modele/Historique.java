package modele;

public class Historique {
	private int id_historique;
	private String duree_occupation;
	private String date_attribution;
	private Utilisateur utilisateur;
	private Place_parking place_parking;

	public Historique() {

	}

	public Historique(int id_historique, String duree_occupation, String date_attribution,
			modele.Utilisateur utilisateur) {
		super();
		this.id_historique = id_historique;
		this.duree_occupation = duree_occupation;
		this.date_attribution = date_attribution;
		this.utilisateur = utilisateur;
	}

	public int getId_historique() {
		return id_historique;
	}

	public void setId_historique(int id_historique) {
		this.id_historique = id_historique;
	}

	public String getDuree_occupation() {
		return duree_occupation;
	}

	public void setDuree_occupation(String duree_occupation) {
		this.duree_occupation = duree_occupation;
	}

	public String getDate_attribution() {
		return date_attribution;
	}

	public void setDate_attribution(String date_attribution) {
		this.date_attribution = date_attribution;
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}
	
	public Place_parking getPlace_parking() {
		return place_parking;
	}

	public void setPlace_parking(Place_parking place_parking) {
		this.place_parking = place_parking;
	}

	@Override
	public String toString() {
		return "Historique [id_historique=" + id_historique + ", duree_occupation=" + duree_occupation
				+ ", date_attribution=" + date_attribution + ", utilisateur=" + utilisateur + ", place_parking="
				+ place_parking + "]";
	}

	

}
