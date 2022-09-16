package modele;

public class personne {
	private int id_utilisateur;
	private String nom;
	private String prenom;
	private String email;
	private String password;
	private int isActive;

	public personne() {

	}

	public personne(int id_utilisateur, String nom, String prenom, String email, String password, int isActive) {

		this.id_utilisateur = id_utilisateur;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
		this.isActive = isActive;
	}

	public int getId_utilisateur() {
		return id_utilisateur;
	}

	public void setId_utilisateur(int id_utilisateur) {
		this.id_utilisateur = id_utilisateur;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	@Override
	public String toString() {
		return "personne [id_utilisateur=" + id_utilisateur + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email
				+ ", password=" + password + ", isActive=" + isActive + "]";
	}

}
