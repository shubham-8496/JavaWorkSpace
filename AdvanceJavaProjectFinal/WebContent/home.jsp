<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.cdac.dto.User"%>
 <%@ include file="header.jsp" %>
<%@ include file="cache_control.jsp" %>
 
<%@page import="java.util.List"%>
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
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<title>home</title>
<style>
        * {
            font-family: 'Roboto', sans-serif;
        }

       
    </style>
</head>
<body>
	<div class="container-fluid">
		<div class="row text-light justify-content-center align-items-center sticky-top"
            style="height: 8vh; font-weight: bold;background: rgb(220, 118, 51)">
            <div class="col-4 justify-content-center  d-flex " style="font-size: 20px;">
                SULAFEST 2020</div>
            <div class=" col-3 d-flex justify-content-center align-items-center" style="text-decoration:none;color: #f4f4f4; "> welcome <%=user.getUserName() %></div>
            <div class=" col-3 d-flex justify-content-end ">
                <a href="booking_list.htm" style="text-decoration:none;color: #f4f4f4; ">MY PROFILE</a>
            </div>
            <div class=" col-2 d-flex ">
           
               <a href="prep_booking_add_form.htm" style="text-decoration:none;color: #f4f4f4; ">BOOKING FORM</a>

            </div>
           
        </div>
        <div class="row bg-dark "
            style="height: 120vh; background:url(1.jpg) center no-repeat ;background-size: cover;">
            
        </div>
        	 <div class="row justify-content-center align-items-center mt-2 mb-2" style="background: rgb(255, 195,0)">
            <div class="col-4"></div>
            <div class="col-4 d-flex  justify-content-center align-items-center">
                <div style="padding: 10px; background-color: orangered;text-decoration:none"><a href="prep_booking_add_form.htm" style="text-decoration:none;color: #f4f4f4; ">Book Now</a></div>
            </div>
            <div class="col-4"></div>
        </div>
        <div class="row bg-primary mt-3"
            style="height: 800px; background:url(electric-lane.jpg) center no-repeat ;background-size: cover;">
        </div>
         <div class="row justify-content-center align-items-center mt-2 mb-2" style="background: rgb(255, 195,0)">
            <div class="col-4"></div>
            <div class="col-4 d-flex  justify-content-center align-items-center">
                <div style="padding: 10px; background-color: orangered;"><a href="prep_booking_add_form.htm" style="text-decoration:none;color: #f4f4f4; ">Book Now</a></div>
            </div>
            <div class="col-4"></div>
        </div>
        <div class="row bg-dark "
            style="height: 800px; background:url(amphitheatre.jpg) center no-repeat ;background-size: cover;">
        </div>
         <div class="row justify-content-center align-items-center mt-2 mb-2" style="background: rgb(255, 195,0)">
            <div class="col-4"></div>
            <div class="col-4 d-flex  justify-content-center align-items-center">
                <div style="padding: 10px; background-color: orangered;"><a href="prep_booking_add_form.htm" style="text-decoration:none;color: #f4f4f4; ">Book Now</a></div>
            </div>
            <div class="col-4"></div>
        </div>
        <div class="row bg-primary mt-3"
            style="height: 800px; background:url(s.jpg) center no-repeat ;background-size: cover;">
        </div>
         <div class="row justify-content-center align-items-center mt-2 " style="background: rgb(255, 195,0)">
            <div class="col-4"></div>
            <div class="col-4 d-flex  justify-content-center align-items-center">
                <div style="padding: 10px; background-color: orangered;"><a href="prep_booking_add_form.htm" style="text-decoration:none;color: #f4f4f4; ">Book Now</a></div>
            </div>
            <div class="col-4"></div>
        </div>
         <div class=" row  justify-content-center align-items-center text-light "
            style="height: 8vh;background: rgb(220, 118, 51); font-size: 20px;">
            SULAFEST @ 2020, All Right Reserved
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