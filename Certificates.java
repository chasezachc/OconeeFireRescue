/**
 * 
 */
package model;

import java.sql.Date;

/**
 * @author Katlyn
 *
 */
public class Certificates {
	
	private int certificationID;
	private String name;
	private String description;
	private int standardExpiry;
	private Date lastRenewed;
	private Date expiryDate;
	/**
	 * @param certificationID
	 * @param name
	 * @param description
	 * @param standardExpiry
	 * @param lastRenewed
	 * @param expiryDate
	 */
	
	public Certificates(){
		
		
	}
	public Certificates(int certificationID, String name, String description, int standardExpiry, Date lastRenewed,
			Date expiryDate) {
		this.certificationID = certificationID;
		this.name = name;
		this.description = description;
		this.standardExpiry = standardExpiry;
		this.lastRenewed = lastRenewed;
		this.expiryDate = expiryDate;
	}
	/**
	 * @return the certificationID
	 */
	public int getCertificationID() {
		return certificationID;
	}
	/**
	 * @param certificationID the certificationID to set
	 */
	public void setCertificationID(int certificationID) {
		this.certificationID = certificationID;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the standardExpiry
	 */
	public int getStandardExpiry() {
		return standardExpiry;
	}
	/**
	 * @param standardExpiry the standardExpiry to set
	 */
	public void setStandardExpiry(int standardExpiry) {
		this.standardExpiry = standardExpiry;
	}
	/**
	 * @return the lastRenewed
	 */
	public Date getLastRenewed() {
		return lastRenewed;
	}
	/**
	 * @param lastRenewed the lastRenewed to set
	 */
	public void setLastRenewed(Date lastRenewed) {
		this.lastRenewed = lastRenewed;
	}
	/**
	 * @return the expiryDate
	 */
	public Date getExpiryDate() {
		return expiryDate;
	}
	/**
	 * @param expiryDate the expiryDate to set
	 */
	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}

	
	
}
