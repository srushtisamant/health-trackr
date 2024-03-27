package controller;

import java.io.*;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.apache.commons.io.IOUtils;

import model.*;
import bean.*;

/**
 * Servlet implementation class DProfileInsert
 */
@WebServlet("/DProfileInsert")
@MultipartConfig(maxFileSize=1024*1024*8)
public class DProfileInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DProfileInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String docUser = request.getParameter("docUser");
			String doctName = request.getParameter("doctName");
			String doctRegNo = request.getParameter("doctRegNo");
			String dHospName = request.getParameter("dHospName");
			String doctAdhar = request.getParameter("doctAdhar");
			String doctGraduation = request.getParameter("doctGraduation");
			String doctPostGraduation = request.getParameter("doctPostGraduation");
			String doctSpec = request.getParameter("doctSpec");
			String dHospAdd = request.getParameter("dHospAdd");
			String doctBG = request.getParameter("doctBG");
			String mobnum = request.getParameter("mobnum");
			String doctEmail = request.getParameter("doctEmail");
			String gender = request.getParameter("gender");
			Part doctPhoto = request.getPart("doctPhoto");
			
			
			
			int dreg = 0;
			try
			{
				dreg = Integer.parseInt(doctRegNo);
			}catch(NumberFormatException ee)
			{
			}
			
			out.println(doctName+""+doctRegNo);
			
			Blob blob=null;
			InputStream is = null;
			if(doctPhoto!=null)
			{
				is = doctPhoto.getInputStream();
				byte[] b = IOUtils.toByteArray(is);
				
				try {
					blob = new SerialBlob(b);
				} catch (SerialException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		DProfile dp = new DProfile(docUser,doctName, dreg,dHospName, doctAdhar, doctGraduation, doctPostGraduation, doctSpec,doctBG,mobnum,doctEmail,gender, blob);
		ProfileDaoImpl.saveProfile(dp);
		response.sendRedirect("dUpdateProfile.jsp");
	}

}
