package sw.mlw;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import sw.mlw.models.Message;

public class ActionHandler {
	
	private static ActionHandler instance = null;
	
	public static ActionHandler getInstance(){
		if (instance == null)
			instance = new ActionHandler();
		return instance;
	}
	
	
	public void newMessage(HttpServletRequest request){
		if ("1".equals(request.getParameter("newmessage"))){
			
			Message message = new Message();
			message.setMessage(request.getParameter("message"));
			message.setRecipient(request.getParameter("recipient"));
			message.setDeliveryDate(new Date(request.getParameter("deliverydate")));
			MessageDao.getInstance().addMessage(message);
			
			
		}
			
		
	}

}
