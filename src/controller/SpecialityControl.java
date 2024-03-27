package controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.SpecialityService;
import bean.Speciality;

/**
 * Servlet implementation class SpecialityControl
 */
@WebServlet("/SpecialityControl")
public class SpecialityControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SpecialityControl() {
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
	            String hospName = request.getParameter("hname");
	           String sp1 = request.getParameter("sp1");
	           String sp2 = request.getParameter("sp2");
	           String sp3 = request.getParameter("sp3");

	           String sp4 = request.getParameter("sp4");
	           String sp5 = request.getParameter("sp5");
	  
	           Speciality sp = new Speciality(hospName, sp1, sp2, sp3, sp4, sp5);
	           SpecialityService.saveSpeciality(sp);
	           response.sendRedirect("hIndex.jsp?Save");
	}

}
