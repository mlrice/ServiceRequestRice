<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Service Request Result</h2>
    <table>
        <tr>
            <td>First Name</td>
            <td>${r.firstName}</td>
        </tr>
        <tr>
            <td>Last name</td>
            <td>${r.lastName}</td>
        </tr>
        <tr>
            <td>User ID</td>
            <td>${r.userId}</td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td>${r.phoneNumber}</td>
        </tr>
        <tr>
            <td>application</td>
            <td>${r.application}</td>
        </tr>
        <tr>
            <td>Description</td>
            <td>${r.description}</td>
        </tr>
        
        </table>
<a href = "viewAll.mvc">View all Requests</a>
</body>
</html>