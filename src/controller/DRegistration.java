package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.RegisterService;
import bean.DRegister;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/DRegistration")
public class DRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	
    String doctName = request.getParameter("doctName");
    String doctRegNo = request.getParameter("doctRegNo");
    String mobnum = request.getParameter("mobnum");
    String duname = request.getParameter("duname");
    String password = request.getParameter("password");
    String hospname = request.getParameter("hospname");
	
    DRegister rs = new DRegister(doctName, doctRegNo,duname, password, mobnum, hospname);
	RegisterService.docReg(rs);
	
	response.sendRedirect("dlogin.jsp");
	}

}
