<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>  
     <%@page import="com.cdac.dto.User"%>
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
		<div class="container-fluid">

        <div class="row text-light justify-content-center align-items-center sticky-top"
            style="height: 8vh; font-weight: bold;background: rgb(220, 118, 51)">
            <div class="col-4 justify-content-center  d-flex " style="font-size: 20px;">
                SULAFEST 2020</div>
            <div class=" col-4 d-flex justify-content-center align-items-center"> Welcome <%=user.getUserName() %></div>
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

        <div class="row mt-5 mb-5"  style="background:url(q.jpg) center no-repeat ;background-size: cover;">
            <div class="col-3"></div>
            <div class="col-5">
                <spr:form action="booking_add.htm" method="get" commandName="booking">
                    <div class="row ">
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px;" class="text-dark" >FIRSTNAME</label>
                            <spr:input type="text" class="form-control" placeholder="First name" path="firstName"/>
                        </div>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px" class="text-dark">LASTNAME</label>
                            <spr:input type="text" class="form-control" placeholder="Last name" path="lastName"/>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px" class="text-dark">EMAIL</label>
                            <spr:input type="text" class="form-control" placeholder="email" path="email"/>
                        </div>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px" class="text-dark">MOBILENO</label>
                            <spr:input type="text" class="form-control" placeholder="mobileno" path="mobileNo"/>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px" class="text-dark">AGE</label>
                            <spr:input type="text" class="form-control" placeholder="age" path="age"/>
                        </div>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px" class="text-dark">LOCATION</label>
                            <spr:input type="text" class="form-control" placeholder="e.g Mumbai" path="location"/>
                        </div>
                    </div>
                    <div class="row mt-3">
                         <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px" class="text-dark">GENDER</label>
                            <br>
                            <spr:select path="gender">
			    				<spr:option value="male">MALE</spr:option>
			    				<spr:option value="female">FEMALE</spr:option>
			    				<spr:option value="other">OTHER</spr:option>
			    			</spr:select>
                        </div>
                        <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 20px" class="text-dark">NO OF PERSON</label><br>
                            <spr:input type="text" class="form-control" placeholder="1" path="noOfPerson"/>
                        </div>
                    </div>
                     <div class="row mt-3">
                        <div class="col">
                            <label for="exampleInputEmail1"style="font-size: 20px" class="text-dark">DATE</label><br>
                            <spr:select path="date" >
			    				<spr:option value="2020/02/01">2020/02/01</spr:option>
			    				<spr:option value="2020/02/02">2020/02/02</spr:option>
			  				</spr:select>
                        </div>
                       
                         <div class="col">
                            <label for="exampleInputEmail1" style="font-size: 24px" class="text-dark">ENTRY PRICE
                            </label><br>
							<spr:select path="Amount" >
			    				<spr:option value="2500">Rs.2500</spr:option>
			  				</spr:select> 
                        </div>
                    </div>


                    
                    <div class="d-flex justify-content-around mt-4">
                        <div> <input type="submit"  value="BOOK" style="padding:10px;background: rgb(220, 118, 51);padding-left: 20px;padding-right: 20px">
                        </div>
                    </div>
                    </spr:form>

            </div>
            <div class="col-4"></div>

        </div>

	 <div class=" row  justify-content-center align-items-center text-light mt-1"
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