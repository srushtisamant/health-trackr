package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import bean.Prescription;
import util.Database;

public class DPrescription 
{
	public static Prescription savePrescription(Prescription pre)
	{
	SessionFactory sf = Database.dataConnection();
	Session session = sf.openSession();
	Transaction tx = session.beginTransaction();
	
	Prescription p = new Prescription(pre.getPname(), pre.getDiease(),pre.getMedtype(),pre.getMedname(),pre.getDosage(),pre.getQunatity(),pre.getRemark(),pre.getDocname(),pre.getPdate(),pre.getUser());
	session.save(p);
	tx.commit();
	session.close();
	return p;
	}
}
