<%-- 
    Document   : booklist
    Created on : Apr 26, 2023, 10:11:20 PM
    Author     : hp
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.bookdtl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="allcomponents/allcss.jsp" %>
        
         <%@page import="com.DB.DBConnect"%>
    </head>
    <body>
<%@include file="navbar.jsp" %>
   <style>.card-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 1rem; /* optional, adds space between cards */
}

.card {
  background-color: #f2f2f2;
  padding: 1rem;
}
</style>
  <%   
      user us =(user)session.getAttribute("CurrentUser");
      
     %>

      <div class="hero">
    
    
    
      <form action="SearchServlet" method="get" CLASS="form-box">
    <h1>FIND BOOKS NEAR YOU</h1>
    <div class="form-box">
        <input type="text" class="search-field business" placeholder="What are you looking for...." name="bookName">
        <select id="categories" class="search-field location" name="categories"  onchange="updateSubcategories()" placeholder="What are you looking for...." required>
                                           <!-- Options will be dynamically populated using JavaScript -->
         </select>
                        
        <input type="text" class="search-field location" placeholder="Location..." name="location">
        <button class="search-btn" type="submit">Search</button>
    </div>
</form>
     
    </div>
        <section id="search-results">
     <% if (request.getAttribute("books") != null && ((List<bookdtl>) request.getAttribute("books")).size() > 0) { %>
    <h2>Search Results</h2>
    <table>
        <thead>
            <tr>
                <th>Book Name</th>
                <th>Category</th>
                <th>Subcategory</th>
                <th>Author Name</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <% for (bookdtl book : (List<bookdtl>) request.getAttribute("books")) { %>
                <tr>
                    <td><%= book.getBookName() %></td>
                    <td><%= book.getBookCategiries() %></td>
                    <td><%= book.getSubCategiries() %></td>
                    <td><%= book.getAuthorName() %></td>
                    <td><%= book.getPrice() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
<% } else { %>
    <p>No results found.</p>
<% } %>

</section>
    </body>
</html>
