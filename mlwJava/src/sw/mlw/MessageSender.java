package sw.mlw;

import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import sw.mlw.models.Message;

public class MessageSender {
	
	private static MessageSender instance;
	
	public static MessageSender getInstance(){
		return new MessageSender();
	}
	
	public void sendMessage(Message message){

		final String username = "my.legacy.leuven@gmail.com";
		final String password = "leuven3000";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			MimeMessage mimemessage = new MimeMessage(session);
			mimemessage.setFrom(new InternetAddress(username));
			mimemessage.setRecipients(MimeMessage.RecipientType.TO,
				InternetAddress.parse(message.getRecipient()));
			mimemessage.setSubject("A message from the afterlifeb");
			mimemessage.setText(message.getMessage());
 
			Transport.send(mimemessage);
 
			System.out.println("Done");
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

}
