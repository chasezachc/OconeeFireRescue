package model;

public class Person {
	
	private String firstName;
	private String lastName;
	private String radioNumber;
	private String stationNumber;
	private boolean isActive;
	private String address;
	private int workPhone;
	private int mobilePhone;
	private int employeeID;
	private Certificates[] certificates;
	/**
	 * @param firstName
	 * @param lastName
	 * @param radioNumber
	 * @param stationNumber
	 * @param isActive
	 * @param address
	 * @param workPhone
	 * @param mobilePhone
	 * @param employeeID
	 * @param certificates
	 */
	
	public Person(){
		
		
	}
	public Person(String firstName, String lastName, String radioNumber, String stationNumber, boolean isActive,
			String address, int workPhone, int mobilePhone, int employeeID, Certificates[] certificates) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.radioNumber = radioNumber;
		this.stationNumber = stationNumber;
		this.isActive = isActive;
		this.address = address;
		this.workPhone = workPhone;
		this.mobilePhone = mobilePhone;
		this.employeeID = employeeID;
		this.certificates = certificates;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the radioNumber
	 */
	public String getRadioNumber() {
		return radioNumber;
	}
	/**
	 * @param radioNumber the radioNumber to set
	 */
	public void setRadioNumber(String radioNumber) {
		this.radioNumber = radioNumber;
	}
	/**
	 * @return the stationNumber
	 */
	public String getStationNumber() {
		return stationNumber;
	}
	/**
	 * @param stationNumber the stationNumber to set
	 */
	public void setStationNumber(String stationNumber) {
		this.stationNumber = stationNumber;
	}
	/**
	 * @return the isActive
	 */
	public boolean isActive() {
		return isActive;
	}
	/**
	 * @param isActive the isActive to set
	 */
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the workPhone
	 */
	public int getWorkPhone() {
		return workPhone;
	}
	/**
	 * @param workPhone the workPhone to set
	 */
	public void setWorkPhone(int workPhone) {
		this.workPhone = workPhone;
	}
	/**
	 * @return the mobilePhone
	 */
	public int getMobilePhone() {
		return mobilePhone;
	}
	/**
	 * @param mobilePhone the mobilePhone to set
	 */
	public void setMobilePhone(int mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	/**
	 * @return the employeeID
	 */
	public int getEmployeeID() {
		return employeeID;
	}
	/**
	 * @param employeeID the employeeID to set
	 */
	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}
	/**
	 * @return the certificates
	 */
	public array getCertificates() {
		return certificates;
	}
	/**
	 * @param certificates the certificates to set
	 */
	public void setCertificates(Certificates[] certificates) {
		this.certificates = certificates;
	}

}
