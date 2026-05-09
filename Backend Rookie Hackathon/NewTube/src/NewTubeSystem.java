
public class NewTubeSystem {
	public static void main(String[] args) {
		LoginManagerImproved loginManager = new LoginManagerImproved();
		
		
		User user = new PaidUser("l@l.vn","1","luke","Pro");
		user.login();
//		loginManager.processLogin(user);
		
//		user = new EnterpriseUser("j@j.vn","2","jin","ABC");
//		loginManager.processLogin(user);
//		
//		user = new Administrator("a@a.vn","3","amy","LV3");
//		loginManager.processLogin(user);
	}
}
