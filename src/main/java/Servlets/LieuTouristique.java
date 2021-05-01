package Servlets;
import DAO.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BaseDonnee.ListeLieuTouristique;
import DAO.DaoFactory;
import DAO.EvaluationDao;
import Beans.Evaluation;

@WebServlet("/LieuTouristique")
public class LieuTouristique extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EvaluationDao evaluationDao;
	
	public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.evaluationDao = daoFactory.getEvaluationDao();
	}
       
    public LieuTouristique() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ListeLieuTouristique ListeLieu = new ListeLieuTouristique();
		request.setAttribute("lieux", ListeLieu.recupererLieuTouristiques());
		
		String NLieu = request.getParameter("NLieu");
		request.setAttribute("NLieu", NLieu);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/LieuTouristiqueBean.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Evaluation evaluation = new Evaluation();
		evaluation.setEvaluation(request.getParameter("evaluation"));;
		evaluation.setNom(request.getParameter("Nom"));
		evaluation.setPrenom(request.getParameter("Prenom"));
		evaluation.setEmail(request.getParameter("Email"));
		evaluation.setCommentaire(request.getParameter("Commentaire"));
	}

}
