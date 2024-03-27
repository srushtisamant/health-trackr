package controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.RegisterService;
import bean.PRegister;
import bean.DRegister;

/**
 * Servlet implementation class PLogin
 */
@WebServlet("/PLogin")
public class PLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PLogin() {
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

        String username = request.getParameter("username");
           String password = request.getParameter("password");
           String user = "";
           String pass = "";
           HttpSession session = request.getSession();
           session.setAttribute("user",username);
    
       	PRegister reg = RegisterService.plogin(username);
		 user = reg.getUsername();
		 pass = reg.getPassword();
		//System.out.println(username+" " +password);
		if((user.equals(username)) && (pass.equals(password)))
		{
			response.sendRedirect("pDashboard.jsp?inserted");
		}
		else
		{
			out.println("Loginfail");
		}
	}

}
