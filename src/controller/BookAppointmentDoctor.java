package controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.AppointmentDaoImpl;
import bean.BookAppointment;

import java.sql.*;
/**
 * Servlet implementation class BookAppointmentDoctor
 */
@WebServlet("/BookAppointmentDoctor")
public class BookAppointmentDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookAppointmentDoctor() {
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
          String hname = request.getParameter("hospname");
          String dname = request.getParameter("docname");
          String dieases = request.getParameter("dieases");
          String date = request.getParameter("date");
          String tslot = request.getParameter("timeslot");
          String Other = request.getParameter("Other");
          String username = request.getParameter("username");
          
          java.util.Date d = new java.util.Date();
          Date  dd = Date.valueOf(date);
          
          BookAppointment book = new BookAppointment(hname, dname, dieases, dd, tslot, Other, username,"Pending");
          AppointmentDaoImpl.bookAppointment(book);
          if(book!=null)
          {
        	  response.sendRedirect("pBookAppointment.jsp?HistoryInserted");
          }
          
	}

}
