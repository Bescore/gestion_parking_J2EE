package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
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

}
