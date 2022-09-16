package modele;

public class historique {
	private int id_historique;
	private String duree_occupation;
	private String date_attribution;
	private utilisateur utilisateur;

	public historique() {

	}

	public historique(int id_historique, String duree_occupation, String date_attribution,
			modele.utilisateur utilisateur) {
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

	public utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	@Override
	public String toString() {
		return "historique [id_historique=" + id_historique + ", duree_occupation=" + duree_occupation
				+ ", date_attribution=" + date_attribution + ", utilisateur=" + utilisateur + "]";
	}

}
