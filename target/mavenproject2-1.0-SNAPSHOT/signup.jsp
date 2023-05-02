<%-- 
    Document   : login_ragister
    Created on : Apr 11, 2023, 1:18:50 AM
    Author     : hp
--%>

<%@page import="com.entity.Message"%>
<%@page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
 <%@page  errorPage="404.jsp"%>
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
                        <h6 class="account-h6 u-s-m-b-30">Welcome back! Sign in to your account.</h6>
                            <form>
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
                                    <input check="checkbox" class="check-box" id="remember-me-token" required="required" name="check">
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
                <!-- Register -->
                <div class="col-lg-6">
                    <div class="reg-wrapper">
                        <h2 class="account-h2 u-s-m-b-20">Register</h2>
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
                        <h6 class="account-h6 u-s-m-b-30">Registering for this site allows you to access your order status and history.</h6>
                        
                        <form id="reg-form"action="signup" method="post">
                            <div class="u-s-m-b-30">
                                <label for="user-name">Username
                                    <span class="astk">*</span>
                                </label>
                                <input type="text" id="user-name" class="text-field" placeholder="Username" required="required" name="username">
                            </div>
                            <div class="u-s-m-b-30">
                                <label for="email">Email
                                    <span class="astk">*</span>
                                </label>
                                <input type="text" id="email" class="text-field" placeholder="Email"required="required" name="email">
                            </div>
                             <div class="u-s-m-b-30">
                                <label for="email">Contact No.
                                    <span class="astk">*</span>
                                </label>
                                <input type="text" id="contact" class="text-field" placeholder="contact"required="required" name="contact">
                            </div>
                            <div class="u-s-m-b-30">
                                <label for="password">Password
                                    <span class="astk">*</span>
                                </label>
                                <input type="text" id="password" class="text-field" placeholder="Password"required="required" name="password">
                            </div>
                            <div class="u-s-m-b-30">
                                <input type="checkbox" class="check-box" id="accept" required="required" name="Check">
                                <label class="label-text no-color" for="accept">I’ve read and accept the
                                    <a href="terms-and-conditions.html" class="u-c-brand">terms & conditions</a>
                                </label>
                            </div>
                            <div class="u-s-m-b-45">
                                <button  type="submit" class="button button-primary w-100"> <a href="login.jsp">Register</a></button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- Register /- -->
            </div>
        </div>
    </div>
    <!-- Account-Page /- -->
    
   

</div>
<!-- app /- -->
<!--[if lte IE 9]>
<div class="app-issue">
    <div class="vertical-center">
        <div class="text-center">
            <h1>You are using an outdated browser.</h1>
            <span>This web app is not compatible with following browser. Please upgrade your browser to improve your security and experience.</span>
        </div>
    </div>
</div>
<style> #app {
    display: none;
} </style>
<![endif]-->
<!-- NoScript -->
<noscript>
    <div class="app-issue">
        <div class="vertical-center">
            <div class="text-center">
                <h1>JavaScript is disabled in your browser.</h1>
                <span>Please enable JavaScript in your browser or upgrade to a JavaScript-capable browser to register for Groover.</span>
            </div>
        </div>
    </div>
    <style>
    #app {
        display: none;
    }
    </style>
</noscript>
<!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
<script>
window.ga = function() {
    ga.q.push(arguments)
};
ga.q = [];
ga.l = +new Date;
ga('create', 'UA-XXXXX-Y', 'auto');
ga('send', 'pageview')
</script>
<!--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$.ajax({
  url: "signup",
  type: 'POST',
  data: form,
  success: function(data, textStatus, jqXHR) {
    // success handler
  },
  error: function(jqXHR, textStatus, errorThrown) {
    console.log(jqXHR);
  },
  processData: false,
  contentType: false
});
$(document).ready(function(e) {
  console.log("loaded........");
  $("#reg-form").on("submit", function(event) {
    // your form submission code here
  });
}); // Add the closing bracket here
</script>-->
<!--<script>
     now add post js 
  $(document).ready(function(e){
      console.log("loded........");
      $("#reg-form").on("submit",function (event){
        //this code called when form is submited....  
      event.preventDefault();
      console.log("you have clicked on submi------");
          let form=new FormData(this);
          //send signup servlet
          $.ajax({
                     url:"signup"
                      type:'POST',
                      data:form,
                      success: function(data,textStatus,jqXHR){
                          //sucess---
                      },
                          
                      error: function(jqXHR,textStatus,errorThrown){
                          console.log(jqXHR)
                      },
                      processData: false,
                      contentType:false
          });
      
   
</script>-->
<script src="https://www.google-analytics.com/analytics.js" async defer></script>
 Modernizr-JS 
<script type="text/javascript" src="js/vendor/modernizr-custom.min.js"></script>
 NProgress 
<script type="text/javascript" src="js/nprogress.min.js"></script>
 jQuery 
<script type="text/javascript" src="js/jquery.min.js"></script>
 Bootstrap JS 
<script type="text/javascript" src="js/bootstrap.min.js"></script>
 Popper 
<script type="text/javascript" src="js/popper.min.js"></script>
 ScrollUp 
<script type="text/javascript" src="js/jquery.scrollUp.min.js"></script>
 Elevate Zoom 
<script type="text/javascript" src="js/jquery.elevatezoom.min.js"></script>
 jquery-ui-range-slider 
<script type="text/javascript" src="js/jquery-ui.range-slider.min.js"></script>
 jQuery Slim-Scroll 
<script type="text/javascript" src="js/jquery.slimscroll.min.js"></script>
 jQuery Resize-Select 
<script type="text/javascript" src="js/jquery.resize-select.min.js"></script>
 jQuery Custom Mega Menu 
<script type="text/javascript" src="js/jquery.custom-megamenu.min.js"></script>
 jQuery Countdown 
<script type="text/javascript" src="js/jquery.custom-countdown.min.js"></script>
 Owl Carousel 
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
 Main 
<script type="text/javascript" src="js/app.js"></script>-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$.ajax({
  url: "signup",
  type: 'POST',
  data: form,
  success: function(data, textStatus, jqXHR) {
    // success handler
  },
  error: function(jqXHR, textStatus, errorThrown) {
    console.log(jqXHR);
  },
  processData: false,
  contentType: false
});
$(document).ready(function(e) {
  console.log("loaded........");
  $("#reg-form").on("submit", function(event) {
    // your form submission code here
  });
}); // Add the closing bracket here
</script>
   </body>

</html>

