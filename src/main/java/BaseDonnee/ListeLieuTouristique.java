package BaseDonnee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Beans.LieuTouristiqueBean;

public class ListeLieuTouristique {
	public List<LieuTouristiqueBean> recupererLieuTouristiques() {
		List<LieuTouristiqueBean> ListeLieu = new ArrayList<LieuTouristiqueBean>();
		
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
			resultat = statement.executeQuery("SELECT idLieuTouristique, Nom_Lieu, Description_Lieu, idRegion, img_Lieu FROM LIEUTOURISTIQUE;");
			
			//Récupération des données
			while (resultat.next()) {
				int idLieuTouristique = resultat.getInt("idLieuTouristique");
				int idRegion = resultat.getInt("idRegion");
				String Nom_Lieu = resultat.getString("Nom_Lieu");
				String Description_Lieu = resultat.getString("Description_Lieu");
				String img_Lieu = resultat.getString("img_Lieu");
				
				LieuTouristiqueBean LieuTouristique = new LieuTouristiqueBean();
				LieuTouristique.setIdLieuTouristique(idLieuTouristique);
				LieuTouristique.setIdRegion(idRegion);
				LieuTouristique.setNom_Lieu(Nom_Lieu);
				LieuTouristique.setDescription_Lieu(Description_Lieu);
				LieuTouristique.setImg_Lieu(img_Lieu);
				
				ListeLieu.add(LieuTouristique);		
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
			return ListeLieu;
	}
}
