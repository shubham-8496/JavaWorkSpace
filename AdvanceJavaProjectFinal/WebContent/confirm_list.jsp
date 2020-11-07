<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
 <%@page import="com.cdac.dto.Booking"%>
<%@page import="java.util.List"%>
<%@ include file="header.jsp" %>
<%@ include file="cache_control.jsp" %>

<%	
	User user = (User)session.getAttribute("user");
	if(user !=null && user.getUserId()>0)
	{

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>c list</title>
</head>
<body>
			<% Booking b = (Booking)request.getAttribute("booking"); %>
		  <div class="container-fluid">
        <div class="row text-light justify-content-center align-items-center sticky-top"
            style="height: 8vh; font-weight: bold;background: rgb(220, 118, 51)">
            <div class="col-6 justify-content-center  align-items-center d-flex " style="font-size: 20px;">
                SULAFEST 2020 </div>
               <div class="col-6 justify-content-center  align-items-center d-flex " style="font-size: 18px;">
                Welcome <%=user.getUserName() %> </div>

        </div>
        <div class="row justify-content-center align-content-center" style="height: 100px; font-size: 40px;"> 
            VISITING PASS
        </div>
        <div class="row  " style="height: 400px; background:url(2.jpg) center no-repeat ;background-size: cover;">
            <div class="col-2"></div>
            <div class="col-8 ">
                <div class="row justify-content-center align-items-center" style="height: 60px;font-size: 30px;">Booking Invoice </div>
                <div class="row">
                    <div class="col-6 d-flex flex-column">
                        <div class="col  mt-2" style="font-size: 20px;"> First Name: </div>
                        <div class="col " style="font-size: 16px;"><%=b.getFirstName() %></div>
                        <div class="col  mt-3" style="font-size: 20px;"> last Name: </div>
                        <div class="col " style="font-size: 16px;"><%=b.getLastName()%></div>
                        <div class="col  mt-3" style="font-size: 20px;"> Contact No: </div>
                        <div class="col " style="font-size: 16px;"><%=b.getMobileNo()%></div>
                        <div class="col  mt-3" style="font-size: 20px;"> Amount per Person: </div>
                        <div class="col" style="font-size: 16px;"><%=b.getAmount()%></div>

                    </div>
                    <div class="col-6 d-flex flex-column">
                        <div class="col  mt-2" style="font-size: 20px;"> Age: </div>
                        <div class="col " style="font-size: 16px;"><%=b.getAge()%></div>
                        <div class="col  mt-3" style="font-size: 20px;"> Gender </div>
                        <div class="col " style="font-size: 16px;"><%=b.getGender()%></div>
                        <div class="col  mt-3" style="font-size: 20px;">Location </div>
                        <div class="col " style="font-size: 16px;"><%=b.getLocation()%></div>
                        <div class="col  mt-3" style="font-size: 20px;"> No of person </div>
                        <div class="col " style="font-size: 16px;"><%=b.getNoOfPerson()%></div>
                    </div>
                </div>
                <div class="row  mt-2" style="height: 60px;">
                    <div class="col-6 d-flex justify-content-end align-items-center" style="font-size: 24px;">
                        Total Amount -
                    </div>
                    <div class="col-6 d-flex justify-content-start align-items-center" style="font-size: 24px;font-weight: bold;">
							Rs.<%=b.getNoOfPerson()*b.getAmount()%>
                    </div>
                </div>
            </div>
            <div class="col-2"></div>
        </div>
        <div class="row justify-content-center align-content-center" style="height: 100px; font-size: 40px;"> Thank You for Booking!! Enjoy Your Weekend!!
        </div>
        <div class="row justify-content-center align-content-center text-light" style="height: 100px; font-size: 20px;">
            <a href="home.jsp" style="text-decoration: none; padding: 8px; background: yellow;"> Back to Home</a>
        </div>

    </div>
		 
</body>
</html>
<% 
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>