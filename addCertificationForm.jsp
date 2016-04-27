<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link type="text/css" rel="stylesheet" href="stylesheet.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Certification Form</title>
</head>
<body>

	<h1>Oconee Fire Rescue</h1>
	<h3>New Certification Form</h3>
<!-- addForm from GroceryDB used get method, changed to post, but make sure this is correct -->
<form name=addCertificationForm action=addCertification method=post>

	<label>
		Certification ID:
	</label>
	<input type=text name=certificationID value="" />
	<br />
	<label>
		Name:
	</label>
	<input type=text name=name value="" />
	<br />
	<label>
		Description:
	</label>
	<input type=text name=description value="" />
	<br />
	<label>
		Standard Expiration (in years):
	</label>
	<input type=text name=standardExpiry value="" />
	<br />
	

	<input type=submit name=submit value="Save" />
	<input type=reset name=cancel value="Cancel" />

</form>

</body>
</html>