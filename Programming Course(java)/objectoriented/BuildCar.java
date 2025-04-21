package objectoriented;

public class BuildCar {

	public static void main(String[] args) {
		Cars car1 = new Cars("Toyota","black",2013,1234567890);
		car1.setBrand("keya");
		System.out.println(car1.getBrand()+car1.getColor()+car1.getPlateNumber()+car1.getYear());
		

	}

}
