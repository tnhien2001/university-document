import java.util.ArrayList;
//List Collection
public class User {
	protected String email;
	protected String password;
	protected String nickname;
	private	ArrayList<String> viewHistory;	
	
	public User() {
		
	}
	
	public User(String email, String password, String nickname) {
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.viewHistory = new ArrayList<>();
	}
	
	public void login() {
		System.out.println("Hello "+this.nickname + "!");
		System.out.println("Login Succeed!");
	}
	
	public void enterPage() {
		System.out.println("Enter the default page!");
	}
	
	public void viewCourse(String courseId) {
		viewHistory.add(courseId);
		this.showViewHistoryInfo();
	}
	
	public void showViewHistoryInfo() {
		System.out.println(this.viewHistory);
		System.out.println("Course view count: "+this.viewHistory.size());
		System.out.println();
	}
	
	public void removeViewHistory(String courseId) {
		boolean result = this.viewHistory.remove(courseId);
		if (result) {
			System.out.println(courseId + " course is removed from view history");			
		}else {
			System.out.println(courseId + " course is not in history");
		}
		this.showViewHistoryInfo();
	}
	
	public void removeViewHistory(int viewIndex) {
		String removedCourseId = this.viewHistory.remove(viewIndex);
		System.out.println("Course " + removedCourseId + " is removed from view history");
		this.showViewHistoryInfo();
	}
	
	public void clearViewHistory() {
		this.viewHistory.clear();
		this.showViewHistoryInfo();
	}
}
