<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import="model.People" %>
    
<%
    People people = (People) request.getAttribute("people");
	String table = (String) request.getAttribute("certsTable");
	String fullName = people.getFirstName() + " " + people.getLastName();
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link type="text/css" rel="stylesheet" href="stylesheet.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Certifications</title>
</head>
<body>

<h1>Oconee Fire Rescue</h1>
<h3>Member Certifications</h3>
<br />
<%= fullName %>
<br />
<%= table %>
<br />

<a href="addCertification">New Certification</a>

<br />

</body>
</html>
