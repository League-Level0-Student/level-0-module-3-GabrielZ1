
//    Copyright (c) The League of Amazing Programmers 2013-2017
//    Level 0

package elseif;

import javax.swing.JOptionPane;

public class BirthdayReminder {

	public static void main(String[] args) {

		// 1. correct the birthdays for your family below
		String momsBirthday = "December 20th";
		String dadsBirthday = "February 23rd";
		String myBirthday = "January 4th";

		// 2. Find out which birthday the user wants and and store their response in a
		// variable
		String Bday = JOptionPane.showInputDialog("Which Birthday do you want?");
		// 3. Print out what the user typed
		if (Bday.equals("moms birthday")) {
			JOptionPane.showMessageDialog(null, "December 20th");
		}

		else if (Bday.equals("dads birthday")) {
			JOptionPane.showMessageDialog(null, "February 23rd");
		}

		else if (Bday.equals("your birthday")) {
			JOptionPane.showMessageDialog(null, "January 4th");

		} else {
			JOptionPane.showMessageDialog(null, "Sorry, i don't remember that person's birthday");
		}

	};
}
// 4. if user asked for "mom"
// print mom's birthday
// 5. if user asked for "dad"
// print dad's birthday
// 6. if user asked for your name
// print myBirthday
// 7. otherwise print "Sorry, i don't remember that person's birthday!"
