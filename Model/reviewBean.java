package Model;

public class reviewBean {
	private String uname,email,review;

	public reviewBean() {
		super();
	}

	public reviewBean(String uname, String email, String review) {
		super();
		this.uname = uname;
		this.email = email;
		this.review = review;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getReview() {
		return review;
	}

	public void setInquiry(String review) {
		this.review = review;
	}

}
