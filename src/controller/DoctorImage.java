package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import util.Database;
import model.ImageRetrieveDoctor;
import bean.DProfile;

/**
 * Servlet implementation class DoctorImage
 */
@WebServlet("/DoctorImage")
public class DoctorImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try
		{
		
			int id = 0;
			HttpSession session = request.getSession(true);
			String user = (String)session.getAttribute("user");
			
			SessionFactory sf = Database.dataConnection();
			Session ses = sf.openSession();
			Transaction tx = ses.beginTransaction();
			Query query = ses.createQuery("from bean.DProfile where duser = '"+user+"'");
		    List<DProfile> li = query.list();
		    for(Iterator<DProfile> it = li.iterator();it.hasNext();)
		    {
		    	DProfile d = it.next();
		    	id = d.getDid();
		    }
		
			DProfile dp = new DProfile();
		    dp.setDuser(user);
			out.println(dp.getDuser());
		    
		Blob b = ImageRetrieveDoctor.getDoctorImage(id);
		
		int lght = (int) b.length();
		
		byte[] buffer = new byte[lght];
		
		InputStream is = b.getBinaryStream();
		int len = is.read(buffer,0,lght);
		response.reset();
		response.getOutputStream().write(buffer,0,len);
		response.getOutputStream().flush();
		response.getOutputStream().close();
		}catch(Exception e)
		{
			out.println(e);
		}
	}

}
