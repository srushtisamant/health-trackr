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
import bean.HRegister;

/**
 * Servlet implementation class HRegistration
 */
@WebServlet("/HRegistration")
public class HRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String hospName = request.getParameter("hospName");
        String hospRegNum = request.getParameter("hospRegNum");
        String hospAdd = request.getParameter("hospAdd");
        String hospCity = request.getParameter("hospCity");

        String hContact = request.getParameter("hContact");
        String huname = request.getParameter("huname");
        
        String password = request.getParameter("password");
        
		HRegister hr = new HRegister(hospName, hospRegNum, hospAdd, hospCity,hContact,huname, password);
		hr = RegisterService.hReg(hr);
        if(hr!=null)
        {
     	   response.sendRedirect("hlogin.jsp?RegisterSuccess");
        }
	}

}
