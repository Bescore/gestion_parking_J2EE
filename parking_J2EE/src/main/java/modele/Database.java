package modele;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
	public  Connection getConnection() {
	Connection connect = null;
		
	String url = "jdbc:mysql://localhost/";
    String dbName = "j2e_park";
    String user="root";
    String pwd="";

		
    try {
    Class.forName("com.mysql.cj.jdbc.Driver");

         try {
    connect = DriverManager.getConnection(url+dbName,user,pwd);
    System.out.println("connect� !");

    } catch (SQLException e) {
   
    e.printStackTrace();
    }
    } catch (ClassNotFoundException e) {e.printStackTrace();
    }
    return connect;
    }
}
