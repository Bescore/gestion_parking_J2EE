package modele;

public class etage {

	private int id_etage;
	private int numero_etage;

	public etage() {

	}

	public etage(int id_etage, int numero_etage) {
		super();
		this.id_etage = id_etage;
		this.numero_etage = numero_etage;
	}

	public int getId_etage() {
		return id_etage;
	}

	public void setId_etage(int id_etage) {
		this.id_etage = id_etage;
	}

	public int getNumero_etage() {
		return numero_etage;
	}

	public void setNumero_etage(int numero_etage) {
		this.numero_etage = numero_etage;
	}

	@Override
	public String toString() {
		return "etage [id_etage=" + id_etage + ", numero_etage=" + numero_etage + "]";
	}

}
