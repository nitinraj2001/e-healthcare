package mypack.entity;

public class feedbackhealthcare {
	
	private int user_id;
	
	private String name;
	
	private String contact;
	
	private String email_id;
	
	private String feedback;

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public feedbackhealthcare(String name, String contact, String email_id, String feedback) {
		super();
		this.name = name;
		this.contact = contact;
		this.email_id = email_id;
		this.feedback = feedback;
	}

	public feedbackhealthcare() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
