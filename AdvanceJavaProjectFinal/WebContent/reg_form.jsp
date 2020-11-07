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
                <a href="" style="text-decoration:none;color: #f4f4f4; ">SIGNUP HERE</a>
            </div>
            <div class=" col-2 d-flex ">
                <a href="index.jsp" style="text-decoration:none;color: #f4f4f4; ">GO BACK</a>

            </div>
        </div>
        <div class="row " style="height: 84vh; background:url(1.jpg) center no-repeat ;background-size: cover;">
            <div class="col-4">
                            <div class="row justify-content-center align-items-center">
                    
                    <div class="col-6 ">
                        <div class="row mt-1 d-flex flex-column justify-content-center align-items-center">
                            <div class="col  d-flex flex-column justify-content-center align-items-center">
                                <div class="text-light" style="font-size: 30px;">Sign up Here</div>
                            </div>
                            <div class="col  d-flex flex-column justify-content-center align-items-center">
                                <div class="text-light" style="font-size: 24px;">
                                   
                                </div>
                            </div>
                            <div class="col mt-2">
                               <spr:form action="reg.htm" method="get" commandName="user">
                                    <div class="form-group mt-33 text-light">
                                        <label for="exampleInputEmail1" style="font-size: 16px;">FirstName</label>
                                       <spr:input path="firstName" class="form-control" placeholder="Enter firstname"/>
                            <div style="font-size: 18px;color: red">  <spr:errors path="FirstName" ></spr:errors></div>

                                    </div>
                                    <div class="form-group text-light">
                                        <label for="exampleInputPassword1" style="font-size: 16px;">LastName</label>
                                        <spr:input path="lastName" class="form-control" placeholder="Enter lastname"/>
                            <div style="font-size: 18px;color: red">            <spr:errors path="lastName" ></spr:errors></div>
                                    </div>
                                    <div class="form-group text-light">
                                        <label for="exampleInputPassword1" style="font-size: 16px;">MobileNo</label>
                                     <spr:input path="mobileNo" class="form-control" placeholder="Enter Mobileno"/>
                              <div style="font-size: 18px;color: red">       <spr:errors path="mobileNo" ></spr:errors></div>
                                    </div>
                                    <div class="form-group text-light">
                                        <label for="exampleInputPassword1" style="font-size: 16px;">UserName</label>
                                        <spr:input path="userName" class="form-control" placeholder="Enter Email" />
                               <div style="font-size: 18px;color: red">         <spr:errors path="userName" ></spr:errors></div>
                                    </div>
                                    <div class="form-group text-light">
                                        <label for="exampleInputPassword1" style="font-size: 16px;">Password</label>
                                       <spr:input path="userPass" class="form-control" placeholder="Enter password"/>
                                    <div class ="align-items-center justify-content-center" style="font-size: 14px;color:red">  <spr:errors path="userPass" ></spr:errors></div> 
                                       
                                    </div>
                                    <div class="d-flex justify-content-center ">
                                        <div > <input type="submit" value="Register">
                                        </div>
                                    </div>
                            </div>
                            </spr:form>
                        </div>
                        <div class="col d-flex justify-content-center ">
                            <a href="prep_log_form.htm">Already Have an Account?</a>
                        </div>

                    </div>

                </div>
		<div class="col-6"></div>
            </div></div>
            <div class="col-4 ">

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