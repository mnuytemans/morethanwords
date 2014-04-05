package sw.mlw;

import org.hibernate.Session;

import sw.mlw.models.Message;

public class MessageDao {
	
	private static MessageDao instance;
	
	public static synchronized MessageDao getInstance(){
		if (instance == null)
			instance = new MessageDao();
		return instance;
	}
	
	public void addMessage(Message message){
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		session.save(message);
		
	}

}


