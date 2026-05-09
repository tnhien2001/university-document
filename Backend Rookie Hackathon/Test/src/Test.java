
public class Test {
	public static void main(String[] args) {
		ElectricCar car = new ElectricCar("Tesla Model 3", 39999.99);
		System.out.println("Model: "+ car.getModel()+", Price: "+car.getPrice());
	}
}
