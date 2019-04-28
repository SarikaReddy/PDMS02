package iiitb.com.PDMS;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class CommonSessionFactory {
	
	public final static SessionFactory sf;
	
	static {
		  try {
			 sf = new Configuration().configure().buildSessionFactory();

		  } catch (Throwable t) {
		    System.out.println("Error thrown during initialization!!!");
		    throw t;
		  }
		}
}
