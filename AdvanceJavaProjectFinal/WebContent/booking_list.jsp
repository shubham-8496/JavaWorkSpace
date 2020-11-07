<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
 <%@page import="com.cdac.dto.Booking"%>
<%@page import="java.util.List"%>
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
<title>bk list</title>
</head>
<body>
			
		 <div class="container-fluid" style=" background:url(q.jpg) center no-repeat ;background-size: cover;height: 100vh">
        <div class="row text-light justify-content-center align-items-center sticky-top"
            style="height: 8vh; font-weight: bold;background: rgb(220, 118, 51)">
            <div class="col-4 justify-content-center  d-flex " style="font-size: 20px;">
                SULAFEST 2020</div>
            <div class=" col-4 d-flex justify-content-center align-items-center"> Welcome <%=user.getUserName() %></div>
            <div class=" col-2 d-flex justify-content-end ">
                <a href="" style="text-decoration:none;color: #f4f4f4; ">MY CART</a>
            </div>
            <div class=" col-2 d-flex ">
                <a href="" style="text-decoration:none;color: #f4f4f4; "> </a>

            </div>
        </div>
	

        <div class="row " style="margin-top:10vh">
            <div class="col-1"></div>
            <div class="col-10">
                <table class="table table-hover"  style="font-size: 20px">
                    <thead class="">
                        <tr class=" text-dark">
                            <th scope="col">BOOKINGID</th>
                            <th scope="col">FIRSTNAME</th>
                            <th scope="col">LASTNAME</th>
                            <th scope="col">DATE</th>
                            <th scope="col">NO OF PERSON</th>
                            <th scope="col">AMOUNT</th>
                            <th scope="col">CONFIRM</th>
                            <th scope="col">REMOVE</th>
                            <th scope="col">UPDATE</th>
                        </tr>
                    </thead>
                    <tbody class="text-dark " >
                   
                        <tr  > <% 
				 List<Booking> l = (List<Booking>)request.getAttribute("bookList");
					for(Booking a :l){
					%>
                            <th scope="row" style="font-size: 24px"><%=a.getBookingId() %></th>
                            <td style="font-size: 24px"><%=a.getFirstName() %></td>
                            <td style="font-size: 24px"><%=a.getLastName() %></td>
                            <td style="font-size: 24px"><%=a.getDate() %></td>
                            <td style="font-size: 24px"><%=a.getNoOfPerson() %></td>
                            <td style="font-size: 24px"><%=a.getAmount() %></td>
                            
                            <td > <button class="btn btn-dark" style="font-size: 20px;text-decoration: none;"><a href="booking_confirm.htm?bookingId=<%=a.getBookingId()%>" style="text-decoration: none;" class="text-light">Confirm</a></button></td>
                            <td>
							<button class="btn btn-dark" style="font-size: 20px">	<a href="booking_delete.htm?bookingId=<%=a.getBookingId()%>" style="text-decoration: none;" class="text-light">Delete</a></button>
							</td>
						<td>
							<button class="btn btn-dark" style="font-size: 20px"><a href="booking_update_form.htm?bookingId=<%=a.getBookingId()%>" style="text-decoration: none;" class="text-light">Update</a></button>
							</td>
                        </tr>
<%} %>
                    </tbody>
                </table>


            </div>
            <div class="col-1"></div>
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