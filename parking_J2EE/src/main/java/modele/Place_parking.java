package modele;

public class Place_parking {
	private int id_place_parking;
	private String image_url;
	private int isActive_place_parking;
	private String nom_place;
	private Utilisateur utilisateur;
	private Etage etage;

	public Place_parking() {

	}

	public Place_parking(int id_place_parking, String image_url, int isActive_place_parking, String nom_place,
			Utilisateur utilisateur, Etage etage) {
		super();
		this.id_place_parking = id_place_parking;
		this.image_url = image_url;
		this.isActive_place_parking = isActive_place_parking;
		this.nom_place = nom_place;
		this.utilisateur = utilisateur;
		this.etage = etage;
	}

	public int getId_place_parking() {
		return id_place_parking;
	}

	public void setId_place_parking(int id_place_parking) {
		this.id_place_parking = id_place_parking;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public int getIsActive_place_parking() {
		return isActive_place_parking;
	}

	public void setIsActive_place_parking(int isActive_place_parking) {
		this.isActive_place_parking = isActive_place_parking;
	}

	public String getNom_place() {
		return nom_place;
	}

	public void setNom_place(String nom_place) {
		this.nom_place = nom_place;
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public Etage getEtage() {
		return etage;
	}

	public void setEtage(Etage etage) {
		this.etage = etage;
	}

	@Override
	public String toString() {
		return "Place_parking [id_place_parking=" + id_place_parking + ", image_url=" + image_url
				+ ", isActive_place_parking=" + isActive_place_parking + ", nom_place=" + nom_place + ", utilisateur="
				+ utilisateur + ", etage=" + etage + "]";
	}

	
}
