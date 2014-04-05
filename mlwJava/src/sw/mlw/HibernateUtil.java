package sw.mlw;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import sw.mlw.models.Message;

public class HibernateUtil {

	private static final SessionFactory sessionFactory;

	static {
		try {
			sessionFactory = new AnnotationConfiguration()
								.configure()
								.addPackage("sw.mlw.models") //the fully qualified package name
								.addAnnotatedClass(Message.class)
								.buildSessionFactory();

		} catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
