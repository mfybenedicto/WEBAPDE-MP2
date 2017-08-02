package web;

import java.util.ArrayList;

public class UserDatabase {
	public static ArrayList<Person> userBase = new ArrayList<Person>();
	public static UserDatabase userDatabase = new UserDatabase();
	
	private UserDatabase(){
		userBase.add(new Person("stephen", "tan", "WEBAPDE Professor in DLSU"));
	}
	
	public static UserDatabase getInstance(){
		return userDatabase;
	}
	
	public Person login(String username, String password){
		if(username.equals("stephen") && password.equals("tan")){
			Person user = new Person("stephen", "tan");
			return user;
		}else if(username.equals("tan") && password.equals("tan")){
			Person user = new Person("tan", "tan");
			return user;
		}else if(username.equals("webapde") && password.equals("tan")){
			Person user = new Person("webapde", "tan");
			return user;
		}else{
			return null;
		}
	}
	
	public Boolean register(String username, String password, String description){
		
		for(Person user: userBase){
			if(user.getUsername().equals(username) && user.getPassword().equals(password)){
				return true;
			}
		}
		
		Person newUser = new Person();
		newUser.setUsername(username);
		newUser.setPassword(password);
		newUser.setDescription(description);
		userBase.add(newUser);
		
		return false;
	}

}
