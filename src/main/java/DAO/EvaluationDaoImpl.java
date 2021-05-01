package DAO;
import Beans.*;

import java.sql.*;
import java.util.List;

public class EvaluationDaoImpl implements EvaluationDao {
	private DaoFactory daoFactory;
	
	EvaluationDaoImpl(DaoFactory daoFactory){
		this.daoFactory = daoFactory;
	}
	
	public void ajouter(Evaluation evaluation) {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connexion = daoFactory.getConnection();
			preparedStatement = connexion.prepareStatement("INSERT INTO EVALUATION(evaluation, Nom, Prenom, Email, Commentaire) VALUES(?, ?, ?, ?, ?)");
			preparedStatement.setString(1, evaluation.getEvaluation());
			preparedStatement.setString(2, evaluation.getNom());
			preparedStatement.setString(3, evaluation.getPrenom());
			preparedStatement.setString(4, evaluation.getEmail());
			preparedStatement.setString(5, evaluation.getCommentaire());
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void ajouter(LieuTouristiqueBean lieuTouristique) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<LieuTouristiqueBean> lister() {
		// TODO Auto-generated method stub
		return null;
	}

}
