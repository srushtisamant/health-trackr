package controller;

import java.io.*;
import java.sql.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import bean.Prescription;
import model.DPrescription;

/**
 * Servlet implementation class DoctorPrescription
 */
@WebServlet("/DoctorPrescription")
public class DoctorPrescription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorPrescription() {
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
          String pid = request.getParameter("pid");
          String pname = request.getParameter("pname");
          String dieases = request.getParameter("diseases");
        
          String med = request.getParameter("med");
          String medname = request.getParameter("medname");
          String dose[] = request.getParameterValues("dose");
          String medquantity = request.getParameter("medquantity");
           String remark = request.getParameter("remark");
          String doctName = request.getParameter("doctName");
            String date = request.getParameter("prescrDate");
           String uname = request.getParameter("uname");
           
          java.util.Date d = new java.util.Date();
          Date  dd = Date.valueOf(date);
          
          String ds="";
          for(String doses : dose)
          {
        	  ds = doses;
          }
          
          Prescription p = new Prescription(pname, dieases, med, medname, ds, medquantity, remark, doctName, dd, uname);
          DPrescription.savePrescription(p);
          response.sendRedirect("dPrescription.jsp?PrescriptionInserted");
	}

}
