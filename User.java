package model;

public class User {

	private String email;
	private String password;
		
	public User(){
		
	}
	public User(String email, String password){
		this.email = email;
		this.password = password;
	}
	
	
	// TODO
	static User authenticate(String email, String password){
		
		return User;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
}
