package modele;

public class Messages {
	private int id_messages;
	private String sujet;
	private String message_email;
	private int etat;
	private Utilisateur utilisateur;

	public Messages() {
	}

	public Messages(int id_messages, String sujet, String message_email, int etat, modele.Utilisateur utilisateur) {
		super();
		this.id_messages = id_messages;
		this.sujet = sujet;
		this.message_email = message_email;
		this.etat = etat;
		this.utilisateur = utilisateur;
	}

	public int getId_messages() {
		return id_messages;
	}

	public void setId_messages(int id_messages) {
		this.id_messages = id_messages;
	}

	public String getSujet() {
		return sujet;
	}

	public void setSujet(String sujet) {
		this.sujet = sujet;
	}

	public String getMessage_email() {
		return message_email;
	}

	public void setMessage_email(String message_email) {
		this.message_email = message_email;
	}

	public int getEtat() {
		return etat;
	}

	public void setEtat(int etat) {
		this.etat = etat;
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	@Override
	public String toString() {
		return "messages [id_messages=" + id_messages + ", sujet=" + sujet + ", message_email=" + message_email
				+ ", etat=" + etat + ", utilisateur=" + utilisateur + "]";
	}

}
