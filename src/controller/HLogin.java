package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RegisterService;
import bean.HRegister;
import bean.PRegister;

/**
 * Servlet implementation class HLogin
 */
@WebServlet("/HLogin")
public class HLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HLogin() {
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

	        String username = request.getParameter("huname");
	           String password = request.getParameter("password");
	           String user = "";
	           String pass = "";
	           HttpSession session = request.getSession();
	           session.setAttribute("user",username);
	    
	       	HRegister reg = RegisterService.hlogin(username);
			 user = reg.getUsername();
			 pass = reg.getPassword();
			//System.out.println(username+" " +password);
			if((user.equals(username)) && (pass.equals(password)))
			{
				response.sendRedirect("hIndex.jsp");
			}
			else
			{
				out.println("Loginfail");
			}
	}

}
