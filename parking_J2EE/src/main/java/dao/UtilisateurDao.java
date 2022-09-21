package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.security.crypto.bcrypt.BCrypt;

import modele.Database;
import modele.Utilisateur;

public class UtilisateurDao implements Interface <Utilisateur> {
	Connection connect = new Database().getConnection();

	@SuppressWarnings("static-access")
	@Override
	public boolean Create(Utilisateur object) {
		// TODO Auto-generated method stub
		
		//encoder le mot de passe avant l'entr� en BDD
		BCrypt encoder = new BCrypt();
		object.setPassword(encoder.hashpw(object.getPassword(), BCrypt.gensalt()));
		
		try {
			PreparedStatement sql = connect.prepareStatement("INSERT INTO utilisateur(nom,prenom,date_inscription,email,password) VALUES(?,?,now(),?,?)");
			
			sql.setString(1, object.getNom());
			sql.setString(2, object.getPrenom());
			sql.setString(3, object.getEmail());
			sql.setString(4, object.getPassword());
			 
			sql.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return false;
	}

	@Override
	public ArrayList<Utilisateur> Read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean Update(Utilisateur object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean Delete(Utilisateur object) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@SuppressWarnings("static-access")
	public ArrayList<Utilisateur>  findByConnexion(Utilisateur object) {
		// TODO Auto-generated method stub
		BCrypt encoder = new BCrypt();
		
		ArrayList<Utilisateur> userstab= new ArrayList<Utilisateur>();
		try {
			PreparedStatement sql = connect.prepareStatement("SELECT * FROM utilisateur where email=? AND isActive_user=?");
			
			sql.setString(1, object.getEmail());
			sql.setInt(2,1);
			
		
			ResultSet rs=sql.executeQuery();
			if(rs.next()) {
				
				//tester (si il correspond ou pas � ce qui est en BDD) le hash avec checkpw
				if(encoder.checkpw(object.getPassword(),rs.getString("password"))) {
					
				// Cr�er un user
				Utilisateur user= new Utilisateur();
				user.setId_utilisateur(rs.getInt("Id_utilisateur"));
				user.setNom(rs.getString("nom"));
				user.setPrenom(rs.getString("prenom"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setDate_inscription(rs.getString("date_inscription"));
				user.setIsActive(rs.getInt("isActive_user"));
				
				//ajouter le user au tableau
				userstab.add(user);
				}
			}	
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return userstab;
	}
	
}
