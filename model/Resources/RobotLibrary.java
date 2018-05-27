
public class RobotLibrary {
	public String Generate(String input) {
		
		return input + "  ya!";
	}
	 public static void main(String[] args) {
		RobotLibrary rl= new RobotLibrary();
		String r=rl.Generate(args[0]);
		System.out.println(r);
	}
	public void Something_Good() {
		System.out.println("Something Good");
	}
}
