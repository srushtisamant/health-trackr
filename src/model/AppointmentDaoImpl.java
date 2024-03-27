package model;

import java.util.List;

import org.hibernate.*;

import util.Database;
import bean.BookAppointment;

public class AppointmentDaoImpl 
{
	public static BookAppointment bookAppointment(BookAppointment app)
	{
		
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		BookAppointment ap = new BookAppointment(app.getHospitalname(),app.getDoctorname(),app.getDiesease(),app.getAppdate(),app.getTimeslot(),app.getOtherdetails(),app.getUsername(),app.getStatus());
		session.save(ap);
		tx.commit();
		session.close();
		return ap;
	}
	
	//code to view all appointment on Hospital side
	public static List<BookAppointment> viewAppointmentHosp(String status)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from bean.BookAppointment where status = '"+status+"'");
		List<BookAppointment> li = query.list();
		return li;
	}
}
