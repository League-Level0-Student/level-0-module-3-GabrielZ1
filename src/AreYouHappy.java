import javax.swing.JOptionPane;

public class AreYouHappy {
	public static void main(String[] args) {
		String answer1 = JOptionPane.showInputDialog("Are you happy?");
		if (answer1.equals("yes")) {
			JOptionPane.showMessageDialog(null, "Keep doing whatever you are doing");

		} else {
			String answer2 = JOptionPane.showInputDialog("Do you want to be happy?");
			if (answer2.equals("no")) {
JOptionPane.showMessageDialog(null, "Keep doing whatever you are doing");
			}
			else {JOptionPane.showMessageDialog(null, "Change something");
				
			}
		}

	}
}
