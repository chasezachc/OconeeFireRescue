<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String table = (String) request.getAttribute("resultTable");
	String options = (String) request.getAttribute("options");
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link type="text/css" rel="stylesheet" href="stylesheet.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Certification Database</title>
</head>
<body>

<h1>Oconee Fire Rescue</h1>
<h3>Member Certification Database</h3>

<br />
<%= table %>
<br />

<a href="add">New Member</a>

<br />
<!-- TODO add horizontal rule line across page here  -->

<h2>REPORTS</h2>
<form id="exportForm" action="exportReport" method="post">
	<label for="reportType">Report Type</label>
	<select name="reportType" id="reportType">
		<option value="">Select Report Type</option>
		<option value="memberList">Full Member List</option>
		<option value="expiredList">Expired Certifications</option>
	</select>
	<label for="filter">Filter</label>
	<select name="certFilter" id="certFilter">
		<option value="">Select Certification</option>
		<%= options %>
	</select>
<!-- TODO figure out how to take form values, query database, and export csv file (ideally, automatically start download) -->
	<input type="submit" value="Export to CSV">
</form>
	


</body>
</html>
