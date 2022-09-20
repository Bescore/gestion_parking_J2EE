package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
		
		//encoder le mot de passe avant l'entré en BDD
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

}
