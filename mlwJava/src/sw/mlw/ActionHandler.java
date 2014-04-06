package sw.mlw;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import sw.mlw.models.Message;

public class ActionHandler {

	private static ActionHandler instance = null;

	public static ActionHandler getInstance() {
		if (instance == null)
			instance = new ActionHandler();
		return instance;
	}

	public void newMessage(HttpServletRequest request) {
		if ("1".equals(request.getParameter("newmessage"))) {

			final Message message = new Message();
			message.setMessage(request.getParameter("message"));
			message.setRecipient(request.getParameter("recipient"));
			message.setDeliveryDate(new Date(request
					.getParameter("deliverydate")));
			MessageDao.getInstance().addMessage(message);
			
			
			//For now we just send the message the moment its created.
			
			Runnable mailsender = new Runnable() {
				
				@Override
				public void run() {					
					new MessageSender().sendMessage(message);
				}
			};
			
			new Thread(mailsender).start();
			
		}
	}

	public void sendMessage(HttpServletRequest request) {
		System.out.println("Sending mail");
		//Not used yet.
	}

}
