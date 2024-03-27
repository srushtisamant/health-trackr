package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.DRegister;
import model.RegisterService;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet("/DLogin")
public class DLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		
		HttpSession session = request.getSession(true);
		session.setAttribute("user",user);
		
		DRegister reg = RegisterService.login(user);
		String username = reg.getUsername();
		String password = reg.getPassword();
		//System.out.println(username+" " +password);
		if((user.equals(username)) && (pass.equals(password)))
		{
			response.sendRedirect("dDashboard.jsp?inserted");
		}
		else
		{
			out.println("Loginfail");
		}
		
	}

}
