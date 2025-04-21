package objectoriented;

public class Cars {
	//Attributes
	private String brand;
	private String color;
	private int year;
	private int id;
	public Cars(String brand, String color, int year) {
		super();
		this.brand = brand;
		this.color = color;
		this.year = year;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public Cars() {
		super();
	}
	void setPlateNumber(int id){
		this.id = id;
	}
	int getPlateNumber() {
		return id;
	}
	public Cars(String brand, String color, int year, int id) {
		super();
		this.brand = brand;
		this.color = color;
		this.year = year;
		this.id = id;
	}
	
}
