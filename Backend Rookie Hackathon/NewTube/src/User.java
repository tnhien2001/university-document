public class User {
	protected String email;
	protected String password;
	protected String nickname;
	protected int temporaryValue;
	
	public User(String email, String password, String nickname) {
		
		this.email = email;
		this.password = password;
		this.nickname = nickname;
	}
	
	public void login() {
		System.out.println("Hello "+this.nickname + "!");
		System.out.println("Login Succeed!");
	}
	
	public void enterPage() {
		System.out.println("Enter the default page!");
	}
	
	
}
