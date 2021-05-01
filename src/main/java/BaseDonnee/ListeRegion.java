package BaseDonnee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Beans.RegionBean;

public class ListeRegion {
	public List<RegionBean> recupererRegions() {
		List<RegionBean> ListeRegion = new ArrayList<RegionBean>();
		
		//Chargement du driver
		try { 
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
		}
		
		//Connexion à la base
		Connection connexion = null;
		Statement statement = null;
		ResultSet resultat = null;
		try {
			connexion = DriverManager.getConnection("jdbc:mysql://localhost:8080/kharjadb", "root", "");
			
			statement = connexion.createStatement();
			
			//Exécution de la requete
			resultat = statement.executeQuery("SELECT idRegion, Nom_Region, Description_Region FROM REGION;");
			
			//Récupération des données
			while (resultat.next()) {
				int idRegion = resultat.getInt("idRegion");
				String Nom_Region = resultat.getString("Nom_Region");
				String Description_Region = resultat.getString("Description_Region");
				
				RegionBean Region = new RegionBean();
				Region.setIdRegion(idRegion);
				Region.setNom_Region(Nom_Region);
				Region.setDescription_Region(Description_Region);
				
				ListeRegion.add(Region);		
			}
		} catch (SQLException e) {	
		} finally {
			//Fermeture de la connexion
			try {
				if (resultat != null)
					resultat.close();
				if (statement != null)
					statement.close();
				if (connexion != null)
					connexion.close();
			} catch (SQLException ignore) {
			}
		}
			return ListeRegion;
	}
}
