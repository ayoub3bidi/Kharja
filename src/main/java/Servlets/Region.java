package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BaseDonnee.ListeLieuTouristique;
import BaseDonnee.ListeRegion;

@WebServlet("/Region")
public class Region extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Region() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ListeRegion ListeRegion = new ListeRegion();
		request.setAttribute("regions", ListeRegion.recupererRegions() );
		
		String Nregion = request.getParameter("Nregion");
		request.setAttribute("Nregion", Nregion);
		
		ListeLieuTouristique ListeLieu = new ListeLieuTouristique();
		request.setAttribute("lieux", ListeLieu.recupererLieuTouristiques());
				
		this.getServletContext().getRequestDispatcher("/WEB-INF/RegionBean.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}