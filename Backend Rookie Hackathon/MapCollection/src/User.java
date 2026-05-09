// 1. Dữ liệu được lưu trữ theo thứ tự.
// 2. Dữ liệu có thể trùng lặp.
// 3. Một dữ liệu có nhiều thuộc tính khác nhau.
// - id = "1111"
// - name = 
// - level = 
// - runtime


import java.util.HashMap;
import java.util.ArrayList;
//Map Collection
public class User {
	protected String email;
	protected String password;
	protected String nickname;
	private	HashMap<String, String> validCourseDetail;
	private ArrayList<HashMap> viewHistoryDetail;
	
	public User() {
		
	}
	
	public User(String email, String password, String nickname) {
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.validCourseDetail = new HashMap<>();
		validCourseDetail.put("id", null);
		validCourseDetail.put("name", null);
		validCourseDetail.put("level", null);
		validCourseDetail.put("runtime", null);
		
		this.viewHistoryDetail = new ArrayList<>();
	}
	
	public void login() {
		System.out.println("Hello "+this.nickname + "!");
		System.out.println("Login Succeed!");
	}
	
	public void enterPage() {
		System.out.println("Enter the default page!");
	}
	
	public void viewCourse(HashMap<String, String> courseDetail) {
		this.viewHistoryDetail.add(courseDetail);
		this.showViewHistoryInfo();
	}
	
	public void showViewHistoryInfo() {
		System.out.println(this.viewHistoryDetail);
		System.out.println("Course view count: "+this.viewHistoryDetail.size());
		System.out.println();
	}
	
	public void checkValidCourse(HashMap<String, String> courseDetail) {
		this.checkCourseKey(courseDetail);
		this.checkCourseValue(courseDetail);
	}
	
	private void checkCourseKey(HashMap<String, String> courseDetail) {
		ArrayList<String> courseKeys = new ArrayList<>(courseDetail.keySet());
		ArrayList<String> courseValidKeys = new ArrayList<>(this.validCourseDetail.keySet());
		
		boolean isValid = courseKeys.equals(courseValidKeys);
		
		if (!isValid) {
			System.out.println("Invalid course keys!");
			System.out.println("Entered keys: "+courseKeys);
			System.out.println("Valid keys: "+validCourseDetail);
		}
	}
	
	private void checkCourseValue(HashMap<String, String> courseDetail) {
		ArrayList<String> courseKeys = new ArrayList<>(courseDetail.keySet());
		
		for (String key:courseKeys) {
			if (courseDetail.get(key) == null) {
				System.out.println("'"+ key +"'"+" value is must entered.");
				
			}
		}
	}
	
	
}
