<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>  
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
<title>booking</title>
</head>
<body>
		<div class="container-fluid" style=" background:url(q.jpg) center no-repeat ;background-size: cover;height: 100vh">

        <div class="row text-light justify-content-center align-items-center sticky-top"
            style="height: 8vh; font-weight: bold;background: rgb(220, 118, 51)">
            <div class="col-4 justify-content-center  d-flex " style="font-size: 20px;">
                SULAFEST 2021</div>
            <div class=" col-4 d-flex justify-content-center align-items-center"> welcome <%=user.getUserName() %></div>
            <div class=" col-2 d-flex justify-content-end ">
                <a href="" style="text-decoration:none;color: #f4f4f4; "></a>
            </div>
            <div class=" col-2 d-flex ">
                <a href="" style="text-decoration:none;color: #f4f4f4; "></a>

            </div>
        </div>

        <div class="row bg-dark justify-content-center align-items-center" style="height: 60px;">
            <div class="col-4"></div>
            <div class="col-4 text-light justify-content-center align-items-center d-flex" style="font-size: 30px;">
                Please fill the Details</div>
            <div class="col-4"></div>

        </div>

        <div class="row mt-5">
            <div class="col-4"></div>
            <div class="col-4">
                <spr:form action="booking_update1.htm" method="get" commandName="booking">
                    <div class="row ">
                    <td>
				<spr:hidden path="bookingId"/>
			</td>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">FirstName</label>
                            <spr:input type="text" class="form-control" placeholder="First name" path="firstName"/>
                        </div>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">LastName</label>
                            <spr:input type="text" class="form-control" placeholder="Last name" path="lastName"/>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">Email</label>
                            <spr:input type="text" class="form-control" placeholder="email" path="email"/>
                        </div>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">MobileNo</label>
                            <spr:input type="text" class="form-control" placeholder="mobileno" path="mobileNo"/>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">Age</label>
                            <spr:input type="text" class="form-control" placeholder="age" path="age"/>
                        </div>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">Location</label>
                            <spr:input type="text" class="form-control" placeholder="e.g Mumbai" path="location"/>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">Amount</label>
                            <spr:select path="Amount" >
			    				<spr:option value="2500">Rs.2500</spr:option>
			  				</spr:select> 
                        </div>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">No of Person</label>
                            <spr:input type="text" class="form-control" placeholder="1" path="noOfPerson"/>
                        </div>
                    </div>
                     <div class="row mt-3">
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">date</label>
                            <spr:select path="date" >
			    				<spr:option value="2020/02/01">2020/02/01</spr:option>
			    				<spr:option value="2020/02/02">2020/02/02</spr:option>
			  				</spr:select>
                        </div>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-light">Gender</label>
                            <spr:select path="gender">
			    				<spr:option value="male">MALE</spr:option>
			    				<spr:option value="female">FEMALE</spr:option>
			    				<spr:option value="other">OTHER</spr:option>
			    			</spr:select>
                        </div>
                    </div>


                    
                    <div class="d-flex justify-content-around mt-4">
                        <div> <input type="submit"  value="UPDATE" >
                        </div>
                    </div>
                    </spr:form>

            </div>
            <div class="col-4"></div>

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