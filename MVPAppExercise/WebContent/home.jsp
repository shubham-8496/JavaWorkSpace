<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error_page.jsp" %>
     <jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
   <%@ include file="header.jsp" %>
   
    <%if (user!=null && user.getUserId()>0  ) {
    %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
</head>
<body>

<h1 >WELCOME <%=user.getUserName()%></h1>


</body>
</html>
<%}else{
	response.sendRedirect("login.jsp");
}
	%>