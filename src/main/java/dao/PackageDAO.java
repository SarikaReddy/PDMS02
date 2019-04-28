package dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import bean.Package;
import bean.Student;
import iiitb.com.PDMS.CommonSessionFactory;
import iiitb.com.PDMS.SendMail;

public class PackageDAO {
	
public static List<Package> getAllPackages(int id){
		
		Session ses = CommonSessionFactory.sf.openSession();
		
		List<Package> pkglist = ses.createNativeQuery("select * from package where stud_id="+id,Package.class).list();
		
		ses.close();
		return pkglist;
		
	}

@SuppressWarnings({ "rawtypes", "deprecation" })
public static String addPackage(Package pkg, int stud_id) {
	
	Session ses = CommonSessionFactory.sf.openSession();
	
	try {
		ses.beginTransaction();
		
		//Student s1 = (Student)ses.get(Student.class, stud_id);
		
			/*
			 * Hibernate.initialize(s1.getPackages());
			 * 
			 * List<Package> pkgs = s1.getPackages();
			 * 
			 * Integer id = (Integer) ses.save(pkg);
			 * 
			 * pkgs.add(pkg); s1.setPackages(pkgs); ses.save(s1); if(id>0) return
			 * "Added a new package!!";
			 */
		SQLQuery insertQuery = ses.createSQLQuery("INSERT INTO package(collect_status,pkg_collect_time,pkg_entry_time,pkg_id,provider_name,reciever_name,storeroom_status,stud_id) VALUES(?,?,?,?,?,?,?,?)");
				        insertQuery.setParameter(1, pkg.isCollect_status());
				        insertQuery.setParameter(2, pkg.getPkg_collect_time());
				        insertQuery.setParameter(3, pkg.getPkg_entry_time());
				        insertQuery.setParameter(4, pkg.getPkg_id());
				        insertQuery.setParameter(5, pkg.getProvider_name());
				        insertQuery.setParameter(6, pkg.getReciever_name());
				        insertQuery.setParameter(7, pkg.isStoreroom_status());
				        insertQuery.setParameter(8, stud_id);
				        insertQuery.executeUpdate();
				      
		return "Added the package!!!";

	}
	finally {
		ses.getTransaction().commit();
		ses.close();
	} 
}

@SuppressWarnings({ "rawtypes", "deprecation" })
public static String setReceived(String recname, String collect_time, String pkg_id, int stud_id) {
	
	Session ses = CommonSessionFactory.sf.openSession();

	try {
		ses.beginTransaction();
		
			/*
			 * Student s1 = (Student)ses.get(Student.class, stud_id); List<Package> pkgs =
			 * s1.getPackages();
			 * 
			 * for(Package p : pkgs) { if(p.getPkg_id().equals(pkg_id)) {
			 * p.setPkg_collect_time(collect_time); p.setReciever_name(recname);
			 * p.setCollect_status(true); Integer id = (Integer) ses.save(p); if(id>0)
			 * return "Package received!!"; } }
			 */
		SQLQuery insertQuery = ses.createSQLQuery("UPDATE package SET collect_status = :collect_status, pkg_collect_time = :collect_time, reciever_name = :recname where pkg_id = :pkg_id");
		insertQuery.setParameter("collect_status", 'Y');
		insertQuery.setParameter("collect_time", collect_time);
		insertQuery.setParameter("recname", recname);
		insertQuery.setParameter("pkg_id", pkg_id);
        insertQuery.executeUpdate();
      
        return "Package received!!!";
		
	}
	finally {
		ses.getTransaction().commit();
		ses.close();
	}
}

@SuppressWarnings({ "rawtypes", "deprecation", "unchecked" })
public static String sendMailOnAdd(int id, String pkgid) {
	
	Session ses = CommonSessionFactory.sf.openSession();
	try {
		ses.beginTransaction();
			/*
			 * String resp = null; SQLQuery query =
			 * ses.createSQLQuery("select emailid from student where id = :id");
			 * query.addEntity(Student.class); query.setParameter("id", id); //Object[] row
			 * = (Object[]) query.getSingleResult(); //for(Object[] row : rows) {
			 * List<Object> rows = query.list(); for(Object row : rows) {
			 * System.out.println(row); }
			 */
		List<Student> studlist = ses.createNativeQuery("select * from student where id = " + id , Student.class).list();
		for(Student stud : studlist) {
			Hibernate.initialize(stud.getPackages());
			System.out.println(stud.getEmailid());
			String emailid = stud.getEmailid();
			String resp = SendMail.sendOne(emailid, null);
			return resp;
		}
		return "sending mail";
	}
	finally {
		ses.getTransaction().commit();
		ses.close();
	}
}

@SuppressWarnings({ "deprecation", "rawtypes" })
public static String deletePkg(int id,String pkgid) {

	Session ses = CommonSessionFactory.sf.openSession();
	try {
		ses.beginTransaction();
		
		SQLQuery insertQuery = ses.createSQLQuery("DELETE FROM package where pkg_id = :pkg_id");
		insertQuery.setParameter("pkg_id", pkgid);
        insertQuery.executeUpdate();
        return "Successfully deleted!!!";
		
	}
	finally {
		ses.getTransaction().commit();
		ses.close();
	}
}


}
