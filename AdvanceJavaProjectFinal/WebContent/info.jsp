<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid"  style="background:url(q.jpg) center no-repeat ;background-size: cover;">
        <div class="row text-light justify-content-center align-items-center sticky-top"
            style="height: 8vh; font-weight: bold;background: rgb(220, 118, 51)">
            <div class="col-12 justify-content-center  d-flex " style="font-size: 20px;">
                SULAFEST 2020</div>

        </div>
        <div class="row justify-content-center align-content-center" style="height: 100px; font-size: 30px;">Please check your Mail.</div>
        <div class="row  " style="height: 400px;">
            <div class="col-2"></div>
            <div class="col-8 d-flex justify-content-center align-content-center" style="font-size: 24px">

                <%=request.getAttribute("msg")%>
                <br>
	        	<a href="prep_log_form.jsp" style="font-size: 24px;text-decoration: none;">Back</a>
            </div>
            <div class="col-2"></div>
        </div>
        <div class=" row  justify-content-center align-items-center text-light mt-1"
            style="height: 8vh;background: rgb(220, 118, 51); font-size: 16px;">
            SULAFEST @ 2020, All Right Reserved
        </div>

    </div></body>
</html>