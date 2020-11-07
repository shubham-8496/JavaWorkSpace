 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>reg_form</title>
</head>
<body>
<div class="container-fluid">
        <div class="row text-light justify-content-center align-items-center sticky-top"
            style="height: 8vh; font-weight: bold;background: rgb(220, 118, 51)">
            <div class="col-4 justify-content-center  d-flex " style="font-size: 20px;">
                SULAFEST 2020</div>
            <div class=" col-4 d-flex "></div>
            <div class=" col-2 d-flex justify-content-end ">
                <a href="" style="text-decoration:none;color: #f4f4f4; ">LOGIN HERE</a>
            </div>
            <div class=" col-2 d-flex ">
                <a href="" style="text-decoration:none;color: #f4f4f4; "></a>

            </div>
        </div>
        <div class="row " style="height: 84vh; background:url(1.jpg) center no-repeat ;background-size: cover;"">
            <div class="col-4">
             <div class="row  justify-content-center align-items-center">
                   
                    <div class="col-6 ">
                        <div class="row mt-5 d-flex flex-column justify-content-center align-items-center">
                            <div class="col  d-flex flex-column justify-content-center align-items-center">
                                <div class="text-light" style="font-size: 30px;"></div>
                            </div>
                            <div class="col  d-flex flex-column justify-content-center align-items-center">
                                <div class="text-light" style="font-size: 24px;">
                                   
                                </div>
                            </div>
                            <div class="mt-5"></div>
                            <div class="mt-5"></div>
                            
                            <div class="col ">
                               <spr:form action="login.htm" method="get" commandName="user">
                                    
                                    <div class="form-group mt-5 text-light">
                                        <label for="exampleInputPassword1" style="font-size: 24px;">UserName</label>
                                        <spr:input path="userName" class="form-control"/>
                         
                                    </div>
                                   <div style="font-size: 18px;color: red">  <spr:errors path="userName" class=""></spr:errors></div>
                                    <div class="form-group text-light">
                                        <label for="exampleInputPassword1" style="font-size: 24px;">Password</label>
                                       <spr:input path="userPass" class="form-control"/>
                                       
                                    </div>
                                   <div style="font-size: 18px;color: red">  <spr:errors path="userPass" class=""></spr:errors></div>
                                    <div class="d-flex justify-content-around mt-4">
                                        <div> <input type="submit" value="Login">
                                        </div>
                                    </div>
                            </div>
                            </spr:form>
                        </div>
                        <div class="col d-flex justify-content-center ">
                            <a href="forgot.html">Forgot Password?</a>
                        </div>

                    </div>
            
            </div>
            <div class="col-4 ">
               
                </div>
 			<div class="col-6"></div>
            </div>
        </div>
        <div class="col-4"></div>
    </div>

    <div class=" row  justify-content-center align-items-center text-light mt-1"
        style="height: 8vh;background: rgb(220, 118, 51); font-size: 16px;">
        SULAFEST @ 2020, All Right Reserved
    </div>


    </div>
</body>
</html>