package Model;

public class LoginBean {
	private String uname,upwd;

	public LoginBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginBean(String uname, String upwd) {
		super();
		this.uname = uname;
		this.upwd = upwd;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	

}
