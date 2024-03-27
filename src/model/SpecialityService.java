package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import util.Database;
import bean.Speciality;

public class SpecialityService 
{
	public static Speciality saveSpeciality(Speciality sp)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Speciality spe = new Speciality(sp.getHname(),sp.getSp1(),sp.getSp2(),sp.getSp3(),sp.getSp4(),sp.getSp5());
		session.save(spe);
		tx.commit();
		session.close();
		return spe;
	}
}
