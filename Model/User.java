package Model;

public class User extends LoginBean{
	
	private String fname,lname,uemail,umobile;


	public User(String uname, String fname,String lname,String uemail, String upwd, String umobile) {
		super(uname,upwd);
		this.fname = fname;
		this.lname = lname;
		this.uemail = uemail;
		this.umobile = umobile;
	}
	
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUmobile() {
		return umobile;
	}

	public void setUmobile(String umobile) {
		this.umobile = umobile;
	}

}
