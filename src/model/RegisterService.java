package model;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import util.Database;
import bean.HRegister;
import bean.PRegister;
import bean.DRegister;

public class RegisterService 
{
	//doctor registration code
	public static DRegister docReg(DRegister reg)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		
		DRegister r = new DRegister(reg.getDname(),reg.getDocreg(),reg.getUsername(),reg.getPassword(),reg.getMobile(),reg.getHospname());
		session.save(r);
		tx.commit();
		session.close();
		return r;
		
	}
	//code for doctor login
	public static DRegister login(String user)
	{
		//ArrayList<Register> al = new ArrayList<Register>();
		SessionFactory sf = Database.dataConnection();
		Session session =sf.openSession();
		Transaction tx = session.beginTransaction();
		
		DRegister reg = session.get(DRegister.class, user);
		//al.add(reg);
		return reg;
	}
	
	public static PRegister pReg(PRegister reg)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		
		PRegister r = new PRegister(reg.getFname(),reg.getMobile(),reg.getUsername(),reg.getPassword());
		session.save(r);
		tx.commit();
		session.close();
		return reg;
	}
	public static PRegister plogin(String user)
	{
		//ArrayList<Register> al = new ArrayList<Register>();
		SessionFactory sf = Database.dataConnection();
		Session session =sf.openSession();
		Transaction tx = session.beginTransaction();
		
		PRegister reg = session.get(PRegister.class, user);
		//al.add(reg);
		return reg;
	}
	public static HRegister hReg(HRegister reg)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		
		HRegister hreg = new HRegister(reg.getHname(),reg.getRegno(),reg.getHadd(),reg.getCity(),reg.getMobile(),reg.getUsername(),reg.getPassword());
		session.save(hreg);
		tx.commit();
		session.close();
		return reg;
	}
	public static HRegister hlogin(String user)
	{
		//ArrayList<Register> al = new ArrayList<Register>();
		SessionFactory sf = Database.dataConnection();
		Session session =sf.openSession();
		Transaction tx = session.beginTransaction();
		
		HRegister reg = session.get(HRegister.class, user);
		//al.add(reg);
		return reg;
	}
	
	//code to retrieve the hospital in doctor registration page
	
	public static List<HRegister> getHospName()
	{
		SessionFactory sf = Database.dataConnection();
		Session session =sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Query query = session.createQuery("from bean.HRegister");
		List li = query.list();
		return li;
		
	}
	
	//code to retrieve doctor name in book Appointment page
	public static List<DRegister> getDocName()
	{
		SessionFactory sf = Database.dataConnection();
		Session session =sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Query query = session.createQuery("from bean.DRegister");
		List li = query.list();
		return li;
		
	}
}
 