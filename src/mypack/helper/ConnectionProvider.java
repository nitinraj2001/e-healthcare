package mypack.helper;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import mypack.entity.AdminHealthCareLogin;
import mypack.entity.DoctorHealthCareLogin;
import mypack.entity.DoctorRegistration;
import mypack.entity.PatientBookAppointment;
import mypack.entity.UserHealthCare;

public class ConnectionProvider {
	
	public static SessionFactory factory;
	
	public static SessionFactory getFactory() {
		
		if(factory==null) {
			
			
			
			StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("/mypack/resource/hibernate.cfg.xml").build(); 
			
			 Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
			 
			factory=meta.buildSessionFactory();
			 
			
			
		}
		
		return factory;
		
	}
	
	public static void getcloseFactory() {
		
		if(factory.isOpen()) {
			
			factory.close();
		}
		
		
	}
	
	public static int userregister(UserHealthCare user) {
		
		int status=0;
		
		Session session=getFactory().openSession();
		
		Transaction t=session.beginTransaction();
		
		status=(Integer)session.save(user);
		
		t.commit();
		
		session.close();
		
		
		
		
		return status;
	}
	
	public static int doctorregister(DoctorHealthCareLogin doctor) {
		
		int status;
		
		
Session session=getFactory().openSession();
		
		Transaction t=session.beginTransaction();
		
		status=(Integer)session.save(doctor);
		
		t.commit();
		
		session.close();
		
		
		
		
		
		
		
		
		
		
		return status;
		
		
	}
	

	public static int adminregister(AdminHealthCareLogin admin) {
		
		int status;
		
		
Session session=getFactory().openSession();
		
		Transaction t=session.beginTransaction();
		
		status=(Integer)session.save(admin);
		
		t.commit();
		
		session.close();
		
		
		
		
		
		
		
		
		
		
		return status;
		
		
	}
	
	public static int Doctorregister(DoctorRegistration doc_reg) {
		
		int status;
		
		
Session session=getFactory().openSession();
		
		Transaction t=session.beginTransaction();
		
		status=(Integer)session.save(doc_reg);
		
		t.commit();
		
		session.close();
		
		return status;
		
		
	}
	
	
public static int patientregister(PatientBookAppointment patient) {
		
		int status;
		
		
Session session=getFactory().openSession();
		
		Transaction t=session.beginTransaction();
		
		status=(Integer)session.save(patient);
		
		t.commit();
		
		session.close();
		
		
		
		
		
		
		
		
		
		
		return status;
		
		
	}

}

