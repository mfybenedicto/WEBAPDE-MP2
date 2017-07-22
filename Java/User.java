
public class User {
	private String username;
	private String password;
	private String description;
	
	public User(String username, String password, String description){
		this.username = username;
		this.password = password;
		this.description = description;
	}
	
	public void setUsername(String username){
		this.username = username;
	}
	
	public String getUsername(){
		return username;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public String getPassword(){
		return password;
	}
	
	public void setDescription(String description){
		this.description = description;
	}
	
	public String getDiscription(){
		return description;
	}
}
