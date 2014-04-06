package sw.mlw;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

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
		
		Transaction t =  session.beginTransaction();
		session.save(message);
		
		t.commit();
		session.clear();
	}
	
	public List<Message> listMessages(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Message> messages = session.createCriteria(Message.class).list();
		session.close();
		return messages;
	}

}


