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
		Product Sku:
	</label>
	<input type=text name=sku value="" />
	<br />
	<label>
		Product Type:
	</label>
	<input type=text name=productType value="" />
	<br />
	<label>
		Product Flavor:
	</label>
	<input type=text name=flavor value="" />
	<br />
	<label>
		Product Cost:
	</label>
	<input type=text name=cost value="" />
	<br />
	<label>
		Product Price:
	</label>
	<input type=text name=price value="" />
	<br />
	<label>
		Product Quantity:
	</label>
	<input type=text name=qty value="" />
	<br />

	<input type=submit name=submit value="Add" />

</form>

</body>
</html>