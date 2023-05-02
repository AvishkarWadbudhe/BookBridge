<%-- 
    Document   : detail
    Created on : Apr 27, 2023, 12:20:39 PM
    Author     : hp
--%>

<%@page import="com.entity.bookdtl"%>
<%@page import="com.DAO.bookdao"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="allcomponents/allcss.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
String BookId = request.getParameter("id");
int bookIdInt = 0;
if (BookId != null && BookId.matches("\\d+")) {
    bookIdInt = Integer.parseInt(BookId);
}
bookdao dao = new bookdao(DBConnect.getConnection());
bookdtl b = dao.getBooksByID(bookIdInt);

%>

<h1><%=b.getBookName()%></h1>
<p><%=b.getDescription()%></p>
<p><strong>Price:</strong> <%=b.getPrice()%></p>

    </body>
</html>
