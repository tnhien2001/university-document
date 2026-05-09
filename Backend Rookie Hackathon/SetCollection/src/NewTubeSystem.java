import java.util.HashSet;
import java.util.Arrays;

//Set Collection
public class NewTubeSystem {
	public static void main(String[] args) {
		//1. Tạo danh sách các khóa học bằng Array
		//Tạo đối tượng grace 
		//và lưu danh sách các khóa học mà grace đã xem
		HashSet<String> recommendCourse = new HashSet<>(
				Arrays.asList("1111","2222","3333","4444","5555", "6666")		
			);
			
		System.out.println(recommendCourse);
		
		User grace = new User("grace@abc.vn","1111","grace");
		grace.viewCourse("1111");
		grace.viewCourse("2222");
		grace.viewCourse("3333");
		grace.viewCourse("1111");
		grace.viewCourse("3333");
		
		HashSet<String> graceViewCourse = new HashSet<>(grace.viewHistory);
		
		System.out.println(graceViewCourse);
		
		//2. Đề xuất các khóa học mà grace chưa xem
		recommendCourse.removeAll(graceViewCourse);
		
		System.out.println(recommendCourse);
		
		//3. Tạo đối tượng steve và yc steve xem nhiều khóa học
		//khác nhau 
		//và trích các khóa học trùng lặp giữa grace và steve
		User steve = new User("steve@s.vn","2222","steve");
		steve.viewCourse("2222");
		steve.viewCourse("4444");
		steve.viewCourse("6666");
		steve.viewCourse("1111");
		steve.viewCourse("2222");
		
		System.out.println(steve.viewHistory);
		
		HashSet<String> steveViewCourse = new HashSet<>(steve.viewHistory);
		
		System.out.println(steveViewCourse);
		
		steveViewCourse.retainAll(graceViewCourse);
		
		System.out.println(steveViewCourse);
	}
}
