package controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.ProfileDaoImpl;
import bean.PFamily;


//import java.util.*;
import java.sql.*;
/**
 * Servlet implementation class PatientFamilyHistory
 */
@WebServlet("/PatientFamilyHistory")
public class PatientFamilyHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientFamilyHistory() {
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
	            HttpSession session = request.getSession();
	            String user = (String)session.getAttribute("user");
	          String pname = request.getParameter("pname");
	          String relation = request.getParameter("relation");
	          String date = request.getParameter("date");
	          String mhist = request.getParameter("mhist");
	          Date  dd = Date.valueOf(date);
	     
	          PFamily pf = new PFamily(pname, relation, dd, mhist, user);
	          pf = ProfileDaoImpl.saveHistory(pf);
	          if(pf!=null)
	          {
	        	  response.sendRedirect("pFamlyHist.jsp?HistoryInserted");
	          }
	}

}
