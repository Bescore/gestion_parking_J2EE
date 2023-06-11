package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import modele.Database;
import modele.Voitures;

public class VoituresDao implements Interface <Voitures> {
	Connection connect = new Database().getConnection();
	@Override
	public boolean Create(Voitures object) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement sql = connect.prepareStatement("INSERT INTO voitures (marque,modele,utilisateur,date_heure) VALUES(?,?,?,now())");
			
			sql.setString(1, object.getMarque());
			sql.setString(2, object.getModele());
			sql.setInt(3, object.getUtilisateur().getId_utilisateur());
			
			
			 
			sql.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return false;
	}

	@Override
	public ArrayList<Voitures> Read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean Update(Voitures object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean Delete(Voitures object) {
		// TODO Auto-generated method stub
		return false;
	}
	//utilisé pour le servlet compte
	public ArrayList<Voitures>findByIdUtilisateur(int id_user) {
		// TODO Auto-generated method stub
		
		ArrayList<Voitures> voitureTab= new ArrayList<Voitures>();
		try {
			PreparedStatement sql = connect.prepareStatement("SELECT * FROM voitures where utilisateur=? ORDER BY date_heure DESC");
			
			sql.setInt(1, id_user);
			
			ResultSet rs =sql.executeQuery();
			
			while(rs.next()) {
				//creer voitures
				Voitures newVoiture=new Voitures();
				//lui attribuer les valeurs de colonnes bdd
				newVoiture.setId_voitures(rs.getInt("id_voitures"));
				newVoiture.setDate_heure(rs.getString("date_heure"));
				newVoiture.setMarque(rs.getString("marque"));
				newVoiture.setModele(rs.getString("modele"));
				//setUtilisateur non necessaire ici
				
				voitureTab.add(newVoiture);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return voitureTab;
	}
	
	
	//utilisé lors de la selection de la place de parking pour designer le dernier vehicule de l'utilisateur
	public boolean UpdateDate_heure(int id_voiture) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement sql = connect.prepareStatement("UPDATE voitures SET date_heure=now() WHERE id_voitures=?");
			
			sql.setInt(1, id_voiture);
			
			sql.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return false;
	}
}
