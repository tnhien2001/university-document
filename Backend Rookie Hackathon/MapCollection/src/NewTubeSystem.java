//Map Collection
import java.util.HashMap;

public class NewTubeSystem {
	public static void main(String[] args) {
		User user = new User("grace@codepresso.kr","1111","grace");
		
		HashMap<String, String> courseInfo = new HashMap<>();
		courseInfo.put("id", "1111");
		courseInfo.put("name", "Java Programming");
		courseInfo.put("level", "Introduction");
		courseInfo.put("runtime", "03:00:00");
		
		user.viewCourse(courseInfo);
		
		courseInfo.put("id", "2222");
		courseInfo.put("name", "Web Service");
		courseInfo.put("level", "Basic");
		courseInfo.put("runtime", null);
		
		user.checkValidCourse(courseInfo);
		
		courseInfo.put("runtime", "05:00:00");
		user.checkValidCourse(courseInfo);
		user.viewCourse(courseInfo);
		
		courseInfo.put("id", "3333");
		courseInfo.put("name", "SQL");
		courseInfo.put("level", "Basic");
		courseInfo.put("runtime", "04:00:00");
		courseInfo.put("rating", "5");
		
		user.checkValidCourse(courseInfo);
		courseInfo.remove("rating");
		user.checkValidCourse(courseInfo);
		user.viewCourse(courseInfo);
	}
}
