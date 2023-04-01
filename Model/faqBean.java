package Model;

public class faqBean {



		private String uname,email,inquiry;

		public faqBean() {
			super();
		}

		public faqBean(String uname, String email, String inquiry) {
			super();
			this.uname = uname;
			this.email = email;
			this.inquiry = inquiry;
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

		public String getInquiry() {
			return inquiry;
		}

		public void setInquiry(String inquiry) {
			this.inquiry = inquiry;
		}

}
