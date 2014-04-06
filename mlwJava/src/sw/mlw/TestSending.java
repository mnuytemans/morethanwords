package sw.mlw;

import sw.mlw.models.Message;

public class TestSending {

	public static void main(String[] args) {

		Message message = new Message();
		message.setRecipient("carlosfreund@googlemail.com");
		message.setMessage("This is a testmessage");
		
		new MessageSender().sendMessage(message);
		
	}

}
