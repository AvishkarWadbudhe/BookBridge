<%-- 
    Document   : profile
    Created on : Apr 14, 2023, 11:06:30 AM
    Author     : hp
--%>
<%@page import="com.entity.user"%>
<%@page errorPage="404.jsp"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <%@include file="allcomponents/allcss.jsp" %>
    </head>
    <body>
<%
    // Retrieve user object from session
    user currentUser = (user) session.getAttribute("CurrentUser");
    if (currentUser != null) {
        String username = currentUser.getUsername();
        String email = currentUser.getEmailid();
        // Use the username and email as needed in your profile.jsp page
%>
<!-- Display username and email in profile.jsp page -->

<body>

    <header class="header">
       
            <nav class="navigation">
               
            <ul>
                <li class="logo"><a href="#">Books </a></li>
                
                <li><a href="#">home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">services</a>
                  <ul>
                    <li><a href="#">home<span>25</span></a></li>
                    <li><a href="#">home<span>25</span></a></li>
                    <li><a href="#">home<span>25</span></a></li>
                    <li><a href="#">home<span>25</span></a></li>
        
                  </ul>
                </li>
                <li><a href="#">asdsf</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">About</a></li>
        
        
              </ul>
            </nav>
       
        <nav class="navigation">
          <ul>
            <li><a href="#"><%=currentUser.getEmailid()%></a></li>
            <li><a href="logout">Logout</a></li>
            <li><a href="demo.jsp">sell</a>
            
              
        </nav>
        
      </header>
<%
    } else {
        // Handle case when user is not logged in
        // Redirect to login page or display appropriate message
        response.sendRedirect("login.jsp");
    }
%>

    </body>
</html>
