package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import modele.Database;
import modele.Etage;
import modele.Place_parking;
import modele.Utilisateur;
import modele.Voitures;

public class Place_parkingDao implements Interface<Place_parking> {
	Connection connect = new Database().getConnection();
	@Override
	public boolean Create(Place_parking object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<Place_parking> Read() {
		// TODO Auto-generated method stub
		
		ArrayList<Place_parking> place_parkingTab = new ArrayList<Place_parking>();
		try {

			PreparedStatement sql = connect.prepareStatement("SELECT * FROM place_parking INNER JOIN etage ON place_parking.etage=etage.id_etage");
			ResultSet rs = sql.executeQuery();
			
			while(rs.next()) {
				
				//recuperer l'id utilisateur (juste pour savoir si la place est prise ou non, pas besoin de savoir qui l'occupe)
				Utilisateur newUser=new Utilisateur();
				
				newUser.setId_utilisateur(rs.getInt("utilisateur"));
				
				//creer Etage
				Etage newEtage=new Etage();
				
				newEtage.setId_etage(rs.getInt("id_etage"));
				newEtage.setNumero_etage(rs.getInt("numero_etage"));
				
				//creer une place de parking
				Place_parking newPlace_parking = new Place_parking();
				
				newPlace_parking.setId_place_parking(rs.getInt("id_place_parking"));
				newPlace_parking.setImage_url(rs.getString("image_url"));
				newPlace_parking.setIsActive_place_parking(rs.getInt("isActive_place_parking"));
				newPlace_parking.setNom_place(rs.getString("nom_place"));
				newPlace_parking.setEtage(newEtage);
				newPlace_parking.setUtilisateur(newUser);

				place_parkingTab.add(newPlace_parking);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return place_parkingTab;
	}
	

	@Override
	public boolean Update(Place_parking object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean Delete(Place_parking object) {
		// TODO Auto-generated method stub
		return false;
	}

	
	public boolean UpdateUtilisateur(int id_place_parking,int id_utilisateur) {
		// TODO Auto-generated method stub
		// on efface la place précédemment occupée par l'utilisateur ( un utilisateur ne peut occuper qu'une seule place à la fois)
		try {
			PreparedStatement sql = connect.prepareStatement("UPDATE place_parking SET utilisateur=? WHERE utilisateur=?");
			
			sql.setInt(1,0);
			sql.setInt(2, id_utilisateur);
		
			sql.executeUpdate();
			System.out.println("précédentes places effacée");
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		
		
		
		try {
			PreparedStatement sql = connect.prepareStatement("UPDATE place_parking SET utilisateur=? WHERE id_place_parking=?");
			
			sql.setInt(1,id_utilisateur);
			sql.setInt(2, id_place_parking);
		
			sql.executeUpdate();
			System.out.println("update fait");
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return false;
	}
	
	public boolean UpdatePrecedentePlace(Voitures object) {
		// TODO Auto-generated method stub
		
		return false;
	}
}
