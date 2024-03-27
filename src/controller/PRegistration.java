package controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.RegisterService;
import bean.PRegister;

/**
 * Servlet implementation class PRegister
 */
@WebServlet("/PRegistration")
public class PRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PRegistration() {
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
           String firstname = request.getParameter("firstname");
           String mobnum = request.getParameter("mobnum");
           String username = request.getParameter("username");
           String password = request.getParameter("password");
     
           PRegister pr = new PRegister(firstname, mobnum, username, password);
           pr = RegisterService.pReg(pr);
           if(pr!=null)
           {
        	   response.sendRedirect("plogin.jsp?RegisterSuccess");
           }
	}

}
