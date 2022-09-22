package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import modele.Database;
import modele.Historique;

public class HistoriqueDao implements Interface <Historique> {
	Connection connect = new Database().getConnection();
	@Override
	public boolean Create(Historique object) {
		// TODO Auto-generated method stub
			try {
				PreparedStatement sql = connect.prepareStatement("INSERT INTO historique(date_attribution,utilisateur,place_parking) VALUES(now(),?,?)");
				
				sql.setInt(1, object.getUtilisateur().getId_utilisateur());
				sql.setInt(2, object.getPlace_parking().getId_place_parking());
				
				 
				sql.executeUpdate();
				return true;
			} catch (Exception e) {
				// TODO: handle exception
				e.getMessage();
			}
			return false;
	}

	@Override
	public ArrayList<Historique> Read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean Update(Historique object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean Delete(Historique object) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean UpdateLiberationPlace(Historique object) {
		// TODO Auto-generated method stub
			//cette requête va modifier la colonne duree_occupation, grâce à timediff qui calcule le temps entre 2 time ou date time
			try {
				PreparedStatement sql = connect.prepareStatement("Update historique SET "
						+ "duree_occupation= (SELECT TIMEDIFF(now(),date_attribution)) WHERE utilisateur=? AND place_parking=? AND duree_occupation=0");
				
				sql.setInt(1, object.getUtilisateur().getId_utilisateur());
				sql.setInt(2, object.getPlace_parking().getId_place_parking());
				
				sql.executeUpdate();
				return true;
			} catch (Exception e) {
				// TODO: handle exception
				e.getMessage();
			}
			return false;
	}
}
