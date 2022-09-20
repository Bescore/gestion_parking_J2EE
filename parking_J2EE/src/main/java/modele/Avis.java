package modele;

public class Avis {
	private int id_avis;
	private String commentaire;
	private int note;
	private Utilisateur utilisateur;
	private Place_parking place_parking;

	public Avis() {
	}

	public Avis(int id_avis, String commentaire, int note, modele.Utilisateur utilisateur,
			modele.Place_parking place_parking) {
		super();
		this.id_avis = id_avis;
		this.commentaire = commentaire;
		this.note = note;
		this.utilisateur = utilisateur;
		this.place_parking = place_parking;
	}

	public int getId_avis() {
		return id_avis;
	}

	public void setId_avis(int id_avis) {
		this.id_avis = id_avis;
	}

	public String getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	public int getNote() {
		return note;
	}

	public void setNote(int note) {
		this.note = note;
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
		return "avis [id_avis=" + id_avis + ", commentaire=" + commentaire + ", note=" + note + ", utilisateur="
				+ utilisateur + ", place_parking=" + place_parking + "]";
	}

}
