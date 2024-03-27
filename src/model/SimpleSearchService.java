package model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;

import util.Database;
import bean.EmergencyInsert;
import bean.Speciality;

public class SimpleSearchService 
{

	public static List<Speciality> searchEmergency(String hname)
	{
		SessionFactory sf = Database.dataConnection();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		SQLQuery query = session.createSQLQuery("select * from speciality where hname='"+hname+"' or sp1='"+hname+"' or sp2='"+hname+"' or sp3='"+hname+"' or sp4='"+hname+"' or sp5='"+hname+"'").addEntity(Speciality.class);
		
		List<Speciality> li = query.list();
		return li;
		
	}

}
