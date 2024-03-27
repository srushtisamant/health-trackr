package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EmergencyImpl;
import bean.EmergencyInsert;

/**
 * Servlet implementation class EmergencyInsert
 */
@WebServlet("/EmergencyControl")
public class EmergencyControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmergencyControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html;charset=UTF-8");
	       PrintWriter out = response.getWriter();
	 
	       String cases = request.getParameter("cases");
	       String area = request.getParameter("area");
	       String subarea = request.getParameter("subarea");
	       String hospital = request.getParameter("hospital");
	       
	       EmergencyInsert ei = new EmergencyInsert(cases, area, subarea, hospital);
	       EmergencyImpl.emerInsert(ei);
	       response.sendRedirect("emerInsert.jsp?Inserted");
	}

}
