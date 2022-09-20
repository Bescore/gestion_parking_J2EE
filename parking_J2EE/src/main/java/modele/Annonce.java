package modele;

public class Annonce {
	private int id_annonce;
	private String titre_annonce;
	private String message_annonce;
	private String url_annonce;

	public Annonce() {

	}

	public Annonce(int id_annonce, String titre_annonce, String message_annonce, String url_annonce) {
		super();
		this.id_annonce = id_annonce;
		this.titre_annonce = titre_annonce;
		this.message_annonce = message_annonce;
		this.url_annonce = url_annonce;
	}

	public int getId_annonce() {
		return id_annonce;
	}

	public void setId_annonce(int id_annonce) {
		this.id_annonce = id_annonce;
	}

	public String getTitre_annonce() {
		return titre_annonce;
	}

	public void setTitre_annonce(String titre_annonce) {
		this.titre_annonce = titre_annonce;
	}

	public String getMessage_annonce() {
		return message_annonce;
	}

	public void setMessage_annonce(String message_annonce) {
		this.message_annonce = message_annonce;
	}

	public String getUrl_annonce() {
		return url_annonce;
	}

	public void setUrl_annonce(String url_annonce) {
		this.url_annonce = url_annonce;
	}

	@Override
	public String toString() {
		return "annonce [id_annonce=" + id_annonce + ", titre_annonce=" + titre_annonce + ", message_annonce="
				+ message_annonce + ", url_annonce=" + url_annonce + "]";
	}

}
