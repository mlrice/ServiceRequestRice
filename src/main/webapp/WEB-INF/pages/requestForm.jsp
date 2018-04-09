<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Application Service Request Form</h2>
<mvc:form modelAttribute="request" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="firstName">First Name</mvc:label></td>
	        <td><mvc:input path="firstName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="lastName">Last Name</mvc:label></td>
	        <td><mvc:input path="lastName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="phoneNumber">Phone Number</mvc:label></td>
	        <td><mvc:input path="phoneNumber" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="userId">User ID</mvc:label></td>
	        <td><mvc:input path="userId" /></td>
	    </tr>
            <tr>
            <td><mvc:label path="application">Application</mvc:label></td>
            <td><mvc:select path="application" items="${applications}" /></td>
        </tr>
        <tr>
            <td><mvc:label path="description">Description</mvc:label></td>
            <td><mvc:textarea path="description" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Requests</a>
</body>
</html>