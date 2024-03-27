package model;

import java.sql.Blob;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import bean.DProfile;
import util.Database;

public class ImageRetrieveDoctor 
{
	public static Blob getDoctorImage(int pid)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		DProfile dp = (DProfile)session.load(DProfile.class,pid);
		
		Blob image = dp.getPhoto();
		return image;
	}
}
