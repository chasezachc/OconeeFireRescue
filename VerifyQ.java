package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Product;

/*Class used in login process. This class runs a query to compare submitted login info with information in the database. It will use a boolean
 * value to relay if the login info is correct.
*/
public class VerifyQ {

	private Connection connection;
	private boolean results;
	
	
	//I don't think I need this->		private User user = new User();
	private String email;
	private String password;

	public VerifyQ(String dbName, String uname, String pwd){
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		
		//set up driver
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd);
			
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//reads server to see if login is correct
	public void doRead(String email, String password){
		this.email = email;
		this.password = password;
		String query = "select * from User where email=\"?\" and password=\"?\"";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setString(1, this.email);
		ps.setString(2, this.password);
		
		try {
			
			//Stores a result set with zero (meaning not valid login) or one (meaning valid login) rows.
			ResultSet tempResults = ps.executeQuery();
			
			//Moves the cursor to the first row in this ResultSet object. True if the cursor is on a valid row; false if there are no rows in the result set.
			this.results = tempResults.first();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean getResults(){
		return results;
	}
	
}
