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

import model.ProfileDaoImpl;

import org.apache.commons.io.IOUtils;

import bean.PProfile;

/**
 * Servlet implementation class PudateInsert
 */
@MultipartConfig(maxFileSize=112345567)
@WebServlet("/PudateInsert")
public class PudateInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PudateInsert() {
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
	           String pname = request.getParameter("pname");
	           String adhar = request.getParameter("adhar");
	           String height = request.getParameter("height");
	           String weight = request.getParameter("weight");
	           String bgroup = request.getParameter("bgroup");
	           String age = request.getParameter("age");
	           String gender = request.getParameter("gender3");
	           String mrg = request.getParameter("mrg");
	           String date = request.getParameter("date");
	           String occupation = request.getParameter("occupation");
	           String address = request.getParameter("address");
	           String mobile = request.getParameter("mobile");
	           String email = request.getParameter("email");
	           String ename = request.getParameter("ename");
	           String relation = request.getParameter("relation");
	           String cont = request.getParameter("cont");
	           Part photo = request.getPart("photo");

	           HttpSession session = request.getSession(true);
	           String user = (String)session.getAttribute("user");
	           Blob bPhoto=null;
	           InputStream is = null;
	           if(photo!=null)
	           {
	               System.out.println("Content Type  " +photo.getContentType());
	               is = photo.getInputStream();
	               byte[] array = IOUtils.toByteArray(is);
	               
	               try {
					bPhoto = new SerialBlob(array);
				} catch (SerialException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	           }
	           
	           
	           PProfile pp = new PProfile(pname, adhar, height, weight, bgroup, age, gender, mrg, date, occupation, address, mobile, email, ename, relation, cont, bPhoto, user);
	           pp = ProfileDaoImpl.patientProfile(pp);
	           if(pp!=null)
	           {
	        	   response.sendRedirect("pIndex.jsp?success");
	           }
	}

}
