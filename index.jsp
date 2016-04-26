<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ page import = "model.People"  %>  
     <%@ page import = "model.Certificates"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Oconee Fire Rescue</title>
</head>
<body>
<h1>Oconee Fire Rescue </h1>
<h2>Member Certification Database</h2>
<form name="loginServlet"  action="login" method="post">

  <label><strong> Please enter your login information below:</strong></label><br/>
           Email Username:<input type=text name=username /><br/>
           Password:<input type=text name=password /><br/>
        
            
<input type="submit" value="Login" />
</form>
<div id="button"><a href="RESET PASSWORD">Forget your username or password?</br> Reset Credentials </a> </div>


</body>
</html>