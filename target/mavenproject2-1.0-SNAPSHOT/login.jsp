<%-- 
    Document   : login
    Created on : Apr 14, 2023, 8:28:52 AM
    Author     : hp
--%>

<%@page import="com.entity.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <%@include file="allcomponents/allcss.jsp" %>
       <%@include file="navbar.jsp" %>
         <%@page import="com.DB.DBConnect"%>
    </head>
   <body>
    
     
<!-- app -->
<div id="app">

    <!-- Page Introduction Wrapper /- -->
    <!-- Account-Page -->
    <div class="page-account u-s-p-t-80">
        <div class="container">
            <div class="row">
                <!-- Login -->
                <div class="col-lg-6">
                    <div class="login-wrapper">
                        <h2 class="account-h2 u-s-m-b-20">Login</h2>
                        <%
                           Message m=(Message) session.getAttribute("msg");
                           if(m!=null){
                           %>
                           <div class="alert alert-primary" role="alert">
                               <%=m.getContent()%>
                           </div>
                           <%
                               
                               session.removeAttribute("msg");
                               
                            }
                           %>
                        <h6 class="account-h6 u-s-m-b-30">Welcome back! Sign in to your account.</h6>
                        <form action="login" methods="post">
                            <div class="u-s-m-b-30">
                                <label for="user-name-email">Username or Email
                                    <span class="astk">*</span>
                                </label>
                                <input type="text" id="user-name-email" class="text-field" placeholder="Username / Email" required="required" name="email">
                            </div>
                            <div class="u-s-m-b-30">
                                <label for="login-password">Password
                                    <span class="astk">*</span>
                                </label>
                                <input type="text" id="login-password" class="text-field" placeholder="Password" required="required" name="password">
                            </div>
                            <div class="group-inline u-s-m-b-30">
                                <div class="group-1">
                                    <input check="checkbox" class="check-box" id="remember-me-token"  name="check">
                                    <label class="label-text" for="remember-me-token">Remember me</label>
                                </div>
                                <div class="group-2 text-right">
                                    <div class="page-anchor">
                                        <a href="lost-password.html">
                                            <i class="fas fa-circle-o-notch u-s-m-r-9"></i>Lost your password?</a>
                                    </div>
                                </div>
                            </div>
                            <div class="m-b-45">
                                <button type="submit" class="button button-outline-secondary w-100">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- Login /- -->
            </div>
        </div>
    </div>
</div>
