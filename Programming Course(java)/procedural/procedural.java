package procedural;

public class procedural {

	public static void main(String[] args) {
		program();//call function
		System.out.println(sum(6,7));//call function
	}
	static void program() {//create function
		System.out.println("This is my program");//print
	}
	static int sum(int x,int y) {//create function
		return x*y;//return the result
	}

}
