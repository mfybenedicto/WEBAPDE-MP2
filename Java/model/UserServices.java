package model;

import samples.Person;

//check FAQs

public class UserServices {
	public static String tempUsername;
	public static String tempPassword;
	
	public static User dummyLogin(String username, String password, boolean isRememberMe) {
		System.out.println("dummylogins:" + username + " " + password);;
		if ("stephen".equals(username) && "tan".equals(password)) {
			System.out.println("Person services approve login");
			// generate cookie here for remember me to return to servlet and save as cookie
			
			return new User(username, password);
		}
		else if(tempPassword != null && tempUsername != null){
			if(tempPassword.equals(password) && tempUsername.equals(username)){
				//Allow recently registered user
				return new User (username, password);
			}
		}
		return null;
	}
}
