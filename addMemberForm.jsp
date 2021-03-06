<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link type="text/css" rel="stylesheet" href="stylesheet.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Member Form</title>
</head>
<body>

	<h1>Oconee Fire Rescue</h1>
	<h3>New Member Form</h3>
<!-- addForm from GroceryDB used get method, changed to post, but make sure this is correct -->
<form name=addMemberForm action=addMember method=post>

	<label>
		First Name:
	</label>
	<input type=text name=firstName value="" />
	<br />
	<label>
		Last Name:
	</label>
	<input type=text name=lastName value="" />
	<br />
	<label>
		Radio Number:
	</label>
	<input type=text name=radioNumber value="" />
	<br />
	<label>
		Station Number:
	</label>
	<input type=text name=stationNumber value="" />
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
	<input type=text name=address value="" />
	<br />
	<label>
		Work Phone:
	</label>
	<input type=text name=workPhone value="" />
	<br />
	<label>
		Mobile Phone:
	</label>
	<input type=text name=mobilePhone value="" />
	<br />
	<label>
		EmployeeID:
	</label>
	<input type=text name=employeeID value="" />
	<br />

<!-- figure out how to have one button that saves and returns to home.jsp and one that saves and passes to addCertificationForm.jsp -->

	<input type=submit name=submitAddCert value="Add Certification" />
	<input type=submit name=submit value="Save" />
	<input type=reset name=cancel value="Cancel" />

</form>

</body>
</html>