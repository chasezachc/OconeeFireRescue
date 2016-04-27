package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Certificates;
import model.Person;

/*
 * This dbHelper is meant to query the DB. It will return a String that is HTML code that will produce a table in the Home.jsp.
 */

public class ReadQ {

	private Connection personConnection, certConnection;
	private ResultSet personResults, certResults;


	public ReadQ(String dbName, String uname, String pwd){
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

	//Searches DB and stores a result set of people and their certificates
	public void doReadPerson(){

		String query = "select * from Person";

		try {
			PreparedStatement ps = this.personConnection.prepareStatement(query);
			this.personResults = ps.executeQuery();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	//Searches DB and returns a result set of all unique certificates
	public void doReadCert(){

		String query = "select * from Certification";

		try {
			PreparedStatement ps = this.certConnection.prepareStatement(query);
			this.certResults = ps.executeQuery();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	//Returns a String that is code that will produce a table for the Home.jsp
	public String getHTMLTable(){

		String table = "";
		table += "<table border = 1>";

		try {
			while(this.personResults.next()){
				Person person = new Person();
				person.setEmployeeID(this.personResults.getInt("employeeID"));
				person.setFirstName(this.personResults.getString("firstName"));
				person.setLastName(this.personResults.getString("lastName"));
				person.setRadioNumber(this.personResults.getString("radioNumber"));
				person.setStationNumber(this.personResults.getString("stationNumber"));
				person.setActive(this.personResults.getBoolean("isActive"));
				person.setAddress(this.personResults.getString("address"));
				person.setWorkPhone(this.personResults.getInt("workPhone"));
				person.setMobilePhone(this.personResults.getInt("mobilePhone"));

				table += "<tr>";
				table += "<td>";
				table += person.getFirstName();
				table += "</td>";
				table += "<td>";
				table += person.getLastName();
				table += "</td>";
				table += "<td>";
				table += person.getRadioNumber();
				table += "</td>";
				table += "<td>";
				table += person.getStationNumber();
				table += "</td>";
				table += "<td>";
				table += person.isActive();
				table += "</td>";
				table += "<td>";
				table += person.getAddress();
				table += "</td>";
				table += "<td>";
				table += person.getWorkPhone();
				table += "</td>";
				table += "<td>";
				table += person.getMobilePhone();
				table += "</td>";
				table += "<td>";
				table += person.getEmployeeID();
				table += "</td>";
				table += "<td>";
				table += "<a href=updatePerson?employeeID=" + person.getEmployeeID() + ">View Certificates</a>";
				table += "</td>";
				table += "<td>";
				table += "<a href=updatePerson?employeeID=" + person.getEmployeeID() + ">update</a> <a href=deletePerson?employeeID=" + person.getEmployeeID() + ">delete</a>";
				table += "</td>";
				table += "</tr>";



			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		table += "</table>";
		return table;

	}

	//Returns a String containing the certificate options to filter by.
	public String getHTMLOptions(){

		String option = "";
		option += "<select>";

		try {
			while(this.certResults.next()){

				Certificates cert = new Certificates();
				cert.setCertificationID(this.certResults.getInt("certificationID"));
				cert.setName(this.certResults.getString("name"));
				cert.setDescription(this.certResults.getString("description"));
				cert.setExpiryDate(this.certResults.getDate("standardExpiry"));
				
				option += "<option value=\"" + cert.getCertificationID() + "\">" + cert.getCertificationID() + "</option>";
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}




		return option;

	}

}
