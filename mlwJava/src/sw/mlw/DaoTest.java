package sw.mlw;

import java.util.Date;

import sw.mlw.models.Message;

public class DaoTest {

	public static void main(String[] args) {

		Message message = new Message();
		message.setDeliveryDate(new Date());
		message.setMessage("Hi. If your reading this it means i'm dead. Or im just showing you. but im probably dead. My collection of demonhead tokens i leave to noone, because thats who appreaaciated demonhead as much as me. To you i leave the task of creating a movie about my life. attached is some general purpose footage you can use. ");
		message.setRecipient("everyonq@greendale.com");
		MessageDao.getInstance().addMessage(message);

	}

}
