package model;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import bean.EmergencyInsert;
import bean.PProfile;
import util.Database;

import java.util.*;

public class EmergencyImpl 
{
	//code for emergency insert
	public static EmergencyInsert emerInsert(EmergencyInsert ei)
	{
	SessionFactory sf = Database.dataConnection();
	Session session = sf.openSession();
	Transaction tx = session.beginTransaction();
    EmergencyInsert e = new EmergencyInsert(ei.getCases(),ei.getArea(),ei.getSubarea(),ei.getHospital());
	session.save(e);
	tx.commit();
	session.close();
	return e;
			 
	}
	
	//code for emergency search (emergencySearch.jsp)
	public static List<EmergencyInsert> searchEmergency(String cases,String area,String subarea)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Criteria ct = session.createCriteria(bean.EmergencyInsert.class);
		ct.add(Restrictions.eq("cases",cases));
		ct.add(Restrictions.eq("area",area));
		ct.add(Restrictions.eq("subarea",subarea));
		
		List<EmergencyInsert> li = ct.list();
		return li;
		
	}
	
}
