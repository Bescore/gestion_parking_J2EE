package modele;

public class coordonnees {

	private int id_coordonnees;
	private String nom_entreprise;
	private String adresse;
	private String email_coord;
	private String telephone;
	private String tarifs;

	public coordonnees() {

	}

	public coordonnees(int id_coordonnees, String nom_entreprise, String adresse, String email_coord, String telephone,
			String tarifs) {
		super();
		this.id_coordonnees = id_coordonnees;
		this.nom_entreprise = nom_entreprise;
		this.adresse = adresse;
		this.email_coord = email_coord;
		this.telephone = telephone;
		this.tarifs = tarifs;
	}

	public int getId_coordonnees() {
		return id_coordonnees;
	}

	public void setId_coordonnees(int id_coordonnees) {
		this.id_coordonnees = id_coordonnees;
	}

	public String getNom_entreprise() {
		return nom_entreprise;
	}

	public void setNom_entreprise(String nom_entreprise) {
		this.nom_entreprise = nom_entreprise;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getEmail_coord() {
		return email_coord;
	}

	public void setEmail_coord(String email_coord) {
		this.email_coord = email_coord;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getTarifs() {
		return tarifs;
	}

	public void setTarifs(String tarifs) {
		this.tarifs = tarifs;
	}

	@Override
	public String toString() {
		return "coordonnees [id_coordonnees=" + id_coordonnees + ", nom_entreprise=" + nom_entreprise + ", adresse="
				+ adresse + ", email_coord=" + email_coord + ", telephone=" + telephone + ", tarifs=" + tarifs + "]";
	}

}
