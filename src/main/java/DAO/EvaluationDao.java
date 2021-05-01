package DAO;

import java.util.List;

import Beans.LieuTouristiqueBean;

public interface EvaluationDao {
	void ajouter( LieuTouristiqueBean lieuTouristique );
	List<LieuTouristiqueBean> lister();

}
