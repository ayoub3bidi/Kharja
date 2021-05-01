package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DaoFactory {
	private int evaluation;
    private String Nom;
    private String Prenom;
    private String Email;
    private String Commentaire;

    DaoFactory(int evaluation, String Nom, String Prenom, String Email, String Commentaire) {
        this.evaluation = evaluation;
        this.Nom = Nom;
        this.Prenom = Prenom;
        this.Email = Email;
        this.Commentaire = Commentaire;
    }

    public static DaoFactory getInstance() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {

        }

        DaoFactory instance = new DaoFactory(0, "jdbc:mysql://localhost:8080/kharjadb", "root", "", "");
        return instance;
    }
    
    public Connection getConnection() throws SQLException {
    	return DriverManager.getConnection(Nom, Email, Commentaire);
    }
    
    // Récupération du Dao
    public EvaluationDao getEvaluationDao() {
        return new EvaluationDaoImpl(this);
    }
}