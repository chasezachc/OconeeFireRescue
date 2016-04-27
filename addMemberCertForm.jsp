<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="model.People" %>
    
<%
    People people = (People) request.getAttribute("people");
	String options = (String) request.getAttribute("options");
	String fullName = people.getFirstName() + " " + people.getLastName();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link type="text/css" rel="stylesheet" href="stylesheet.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Member Certification Form</title>
</head>
<body>

	<h1>Oconee Fire Rescue</h1>
	<h3>New Certification Form</h3>
<!-- addForm from GroceryDB used get method, changed to post, but make sure this is correct -->
<form name=addMemberCertForm action=addMemberCert method=post>

	<label>
		First Name:
	</label>
	<input type=text name=firstName value="<%= people.getFirstName() %>" disabled/>
	<br />
	<label>
		Last Name:
	</label>
	<input type=text name=lastName value="<%= people.getFirstName() %>" disabled/>
	<br />
	<label for="certification">Certification</label>
	<select name="certification" id="certification">
		<option value="">Select Certification</option>
		<%= options %>
	</select>
	<br />
	<label>
		Date Certified/Renewed:
	</label>
	<input type=text name=lastRenewed value="" />
	<br />
	<label>
		Expiration Date:
	</label>
	<input type=text name=expiryDate value="" />
	<br />


	<input type=submit name=submit value="Save" />
	<input type=reset name=cancel value="Cancel" />

</form>

</body>
</html>