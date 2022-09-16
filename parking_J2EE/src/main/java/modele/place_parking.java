package modele;

public class place_parking {
	private int id_place_parking;
	private String image_url;
	private int isActive_place_parking;
	private utilisateur utilisateur;
	private etage etage;

	public place_parking() {

	}

	public place_parking(int id_place_parking, String image_url, int isActive_place_parking,
			modele.utilisateur utilisateur, modele.etage etage) {
		super();
		this.id_place_parking = id_place_parking;
		this.image_url = image_url;
		this.isActive_place_parking = isActive_place_parking;
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

	public utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public etage getEtage() {
		return etage;
	}

	public void setEtage(etage etage) {
		this.etage = etage;
	}

	@Override
	public String toString() {
		return "place_parking [id_place_parking=" + id_place_parking + ", image_url=" + image_url
				+ ", isActive_place_parking=" + isActive_place_parking + ", utilisateur=" + utilisateur + ", etage="
				+ etage + "]";
	}

}
