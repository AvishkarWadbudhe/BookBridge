<%-- 
    Document   : navbar
    Created on : Apr 14, 2023, 12:59:12 PM
    Author     : hp
--%>

<%@page import="com.entity.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="allcomponents/allcss.jsp" %>
    </head>
    
<body>

    <header class="header">
       
            <nav class="navigation">
               
            <ul>
                <li class="logo"><a href="#">Books </a></li>
                
                <li><a href="home.jsp">home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="#">services</a>
                  <ul>
                    <li> <a href="SearchServlet?category=college">COLLEGE<span>25</span></a></li>
                    <li> <a href="SearchServlet?category=SCHOOL">SCHOOL<span>25</span></a></li>
                    <li><a href="#">home<span>25</span></a></li>
                    <li><a href="#">home<span>25</span></a></li>
        
                  </ul>
                </li>
                <li><a href="#">asdsf</a></li>
                <li><a href="#">About</a></li>
                
        
        
              </ul>
            </nav>
       <%
    // Retrieve user object from session
    user currentUser = (user) session.getAttribute("CurrentUser");
    if (currentUser != null) {
     //   String userid = currentUser.getUserid();
        String username = currentUser.getUsername();
        String email = currentUser.getEmailid();
        // Use the username and email as needed in your profile.jsp page
%>
        <nav class="navigation">
          <ul>
            <li><a href="#"><%=currentUser.getEmailid()%></a></li>
             <li><a href="#"><%=currentUser.getUsername()%></a></li>
            <li><a href="logout">LogOut</a></li>
            <li><a href="sellform.jsp">sell</a>
                <li><a href="p.jsp">Profile</a>
            
              
        </nav>
  <%
    } else {%>
       <nav class="navigation">
          <ul>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="newjsp.jsp">SignUp</a></li>
            <li><a href="sellerform.jsp">sell</a>
            
              
        </nav>
   <% }
%>      
      </header>
    </body>
</html>
