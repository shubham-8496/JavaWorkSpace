<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sign up here</title>
</head>
<body>
<form action="reg.jsp" method="post" >
		<table align="center" style="font-size:25px"> 
			<thead>
				<tr>
					<th colspan="2" >sign up</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="userName"/> </td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="userPass"  /> </td>
				</tr>
				<tr>
					<td><a href="reg_form.jsp" >Sign up</a> </td>
					<td><input type="submit" value="register"  /> </td>
				</tr>
				<tr>
					<td colspan="2" style="color:black ;font-size:20; text-align:center">
					<%=(request.getParameter("error_msg")!=null)? request.getParameter("error_msg"):"" %>
					
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>