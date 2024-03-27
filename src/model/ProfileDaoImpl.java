package model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import util.Database;
import bean.DProfile;
import bean.PFamily;
import bean.PProfile;
import bean.PRegister;

public class ProfileDaoImpl 
{
	static String fname = "";
	public static PProfile patientProfile(PProfile pp)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		PProfile p = new PProfile(pp.getPname(),pp.getAaadharno(),pp.getHeight(),pp.getWeight(),pp.getBgroup(),pp.getAge(),pp.getGender(),pp.getMstatus(),pp.getDob(),pp.getOccupation(),pp.getAddress(),pp.getMobile(),pp.getEmail(),pp.getEmgname(),pp.getRelation(),pp.getEmgname(),pp.getPhoto(),pp.getUser());
		session.save(p);
		tx.commit();
		session.close();
		return p;
	}
	
	public static PRegister getFirstName(String user)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		PRegister p = (PRegister)session.get(PRegister.class,user);
		fname = p.getFname();
		return p;
	}
	
	public static List<PProfile> getProfile()
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Query query = session.createQuery("from bean.PProfile where pname='"+fname+"'");
		List<PProfile> plist = query.list();
		return plist;
		
	}
	
	//code for Family History of Patient
	
	public static PFamily saveHistory(PFamily pf)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		PFamily p = new PFamily(pf.getPname(),pf.getRelation(),pf.getDob(),pf.getMedical(),pf.getUser());
		session.save(p);
		tx.commit();
		session.close();
		return p;
	}
	public static List<PFamily> getFamily(String user)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Query query = session.createQuery("from bean.PFamily where user='"+user+"'");
		List<PFamily> fam  = query.list();
		return fam;
		
	}
	
	//creating doctor profile(dUpdateProfile.jsp)
	public static DProfile saveProfile(DProfile dp)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		DProfile dpr = new DProfile(dp.getDuser(),dp.getDname(),dp.getDreg(), dp.getHospname(), dp.getAdhar(), dp.getDocgraduation(), dp.getDocpostgrad(), dp.getSpecialisation(), dp.getBgroup(), dp.getContact(), dp.getEmail(), dp.getGender(), dp.getPhoto());
		session.save(dpr);
		tx.commit();
		session.close();
		return dpr;
	}
}
