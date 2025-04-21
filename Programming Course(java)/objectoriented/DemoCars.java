package objectoriented;

public class DemoCars {

	public static void main(String[] args) {
		Cars car1 = new Cars("Toyota","Black",2013);
		car1.setBrand("BMW");
		car1.setColor("Blue");
		car1.setYear(2012);
		try {
			System.out.println(car1.getBrand()+" "+car1.getColor()+" "+car1.getYear()+4/0);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error");
		}
		
		

	}

}
