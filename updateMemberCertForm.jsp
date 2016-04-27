<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="model.People";%>
<%@ page import="model.Certificate" %>

<%  People people = (People) request.getAttribute("people"); 
	Certificate certificate = (Certificate) request.getAttribute("certificate");
%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link type="text/css" rel="stylesheet" href="stylesheet.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Member Certification Form</title>
</head>
<body>

	<h1>Oconee Fire Rescue</h1>
	<h3>Update Certification Info</h3>

<form name=updateMemberCertForm action=updateMemberCert method=post>

	<label>
		First Name:
	</label>
	<input type=text name=firstName value="<%= people.getFirstName() %>" disabled/>
	<br />
	<label>
		Last Name:
	</label>
	<input type=text name=lastName value="<%= people.getLastName() %>" disabled/>
	<br />
	<label>
		Certification:
	</label>
	<input type=text name=certName value="<%= certificate.getName() %>" disabled/>
	<br />
	<label>
		Date Certified/Renewed:
	</label>
	<input type=text name=lastRenewed value="<%= certificate.getLastRenewed() %>" />
	<br />
	<label>
		Expiration Date:
	</label>
	<input type=text name=expiryDate value="<%= certificate.getExpiryDate() %>" />
	<br />

	<input type=submit name=submit value="Update" />
	<input type=reset name=cancel value="Cancel" />
</form>



</body>
</html>