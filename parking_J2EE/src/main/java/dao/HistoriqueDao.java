package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import modele.Database;
import modele.Etage;
import modele.Historique;
import modele.Place_parking;

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
	
	public ArrayList<Historique> findByIdUtilisateur(int id_user) {
		// TODO Auto-generated method stub
		
		ArrayList<Historique> historiqueTab = new ArrayList<Historique>();
		try {

			PreparedStatement sql = connect.prepareStatement("SELECT * FROM historique INNER JOIN place_parking "
					+ " ON historique.place_parking=place_parking.id_place_parking AND isActive_historique=1 AND historique.utilisateur=?");
			
			sql.setInt(1, id_user);
			ResultSet rs = sql.executeQuery();
			
			while(rs.next()) {
				//instancier etage
				Etage newEtage=new Etage();
				newEtage.setNumero_etage(rs.getInt("etage"));
				
				//instancier place_parking
				Place_parking newPlace=new Place_parking();
				
				newPlace.setNom_place(rs.getString("nom_place"));
				newPlace.setEtage(newEtage);
				/*mettre ici le reste des attributs parking si besoin*/
				
				
				//instancier historique
				Historique newHistorique=new Historique();
				
				newHistorique.setDate_attribution(rs.getString("date_attribution"));
				newHistorique.setDuree_occupation(rs.getString("duree_occupation"));
				newHistorique.setId_historique(rs.getInt("id_historique"));
				newHistorique.setIsActive_Historique(rs.getInt("isActive_historique"));
				newHistorique.setPlace_parking(newPlace);
				

				historiqueTab.add(newHistorique);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return historiqueTab;
	}
	
	
	//update pour changer le statut (isActive) de l'historique utilisateur (après paiment)
	public boolean UpdateisActiveHistorique(Historique object) {
		// TODO Auto-generated method stub
			//cette requête va modifier la colonne duree_occupation, grâce à timediff qui calcule le temps entre 2 time ou date time
			try {
				PreparedStatement sql = connect.prepareStatement("Update historique SET isActive_historique=? WHERE utilisateur=?");
				
				sql.setInt(1, object.getIsActive_Historique());
				sql.setInt(2, object.getUtilisateur().getId_utilisateur());
				
				
				sql.executeUpdate();
				return true;
			} catch (Exception e) {
				// TODO: handle exception
				e.getMessage();
			}
			return false;
	}
}
