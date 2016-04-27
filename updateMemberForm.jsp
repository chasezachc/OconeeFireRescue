<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="model.People" %>

<% People people = (People) request.getAttribute("people"); %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link type="text/css" rel="stylesheet" href="stylesheet.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Member</title>
</head>
<body>

<h1>Oconee Fire Rescue</h1>
<h3>Update Member Info</h3>

<form name=updateMemberForm action=updateMember method=post>

	<label>
		First Name:
	</label>
	<input type=text name=firstName value="<%= people.getFirstName() %>" />
	<br />
	<label>
		Last Name:
	</label>
	<input type=text name=lastName value="<%= people.getLastName() %>" />
	<br />
	<label>
		Radio Number:
	</label>
	<input type=text name=radioNumber value="<%= people.getRadioNumber() %>" />
	<br />
	<label>
		Station Number:
	</label>
	<input type=text name=stationNumber value="<%= people.getStationNumber() %>" />
	<br />
	<label>
		Status:
	</label>
	<input type=radio name=isActive id="Active" value="Active" />
	<input type=radio name=isActive id="Inactive" value="Inactive" />
	<br />	
	<label>
		Address:
	</label>
	<input type=text name=address value="<%= people.getAddress() %>" />
	<br />
	<label>
		Work Phone:
	</label>
	<input type=text name=workPhone value="<%= people.getWorkPhone() %>" />
	<br />
	<label>
		Mobile Phone:
	</label>
	<input type=text name=mobilePhone value="<%= people.getMobilePhone() %>" />
	<br />
	<label>
		EmployeeID:
	</label>
	<input type=text name=employeeID value="<%= people.getEmployeeID() %>" />
	<br />

	<input type=submit name=submit value="Update" />
	<input type=reset name=cancel value="Cancel" />
</form>



</body>
</html>