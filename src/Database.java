

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class Database 
{
	static SessionFactory sf;
	
	public static SessionFactory dataConnection()
	{
		StandardServiceRegistry standardRegistry = 
			       new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata metaData = 
			        new MetadataSources(standardRegistry).getMetadataBuilder().build();
		
		 sf = metaData.buildSessionFactory();
		System.out.println("Database connected...");
		return sf;
	}
	public static void main(String args[])
	{
		Database.dataConnection();
	}
}
