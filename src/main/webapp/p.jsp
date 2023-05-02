<%@page import="com.entity.user"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.bookdtl"%>
<%@page import="com.DAO.bookdao"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>User Profile</title>
  <%@include file="allcomponents/allcss.jsp" %>
       
         <%@page import="com.DB.DBConnect"%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  
</head>
<body>
    <%@include file="navbar.jsp" %>
    <style>
        .box{
            margin-top: 20%;
        }
        </style>
  
<!-- Display username and email in profile.jsp page -->



   
 <%
        bookdao dao = new bookdao(DBConnect.getConnection());
        List<bookdtl> list = null;
        list = dao.getBooksByeMAIL("us.getEmailid()");
    %>
    <section> 
     <div class="box">   
  <div class="container">
    <div class="row mt-3">
      <div class="col-md-3">
        <img src="user-profile-image.jpg" alt="User Profile Image" class="img-thumbnail">
      </div>
      <div class="col-md-9">
        <h1 class="mt-0" style="color:black">John Doe</h1>
        <p class="lead"><%=currentUser.getEmailid()%></p>
        <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#products-list" aria-expanded="false" aria-controls="products-list" href="view">
          View Products
        </button>
        <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#wishlist" aria-expanded="false" aria-controls="wishlist">
          View Wishlist
        </button>
      </div>
    </div>
    <div class="collapse" id="products-list">
      <div class="row mt-3">
        <div class="col-md-12">
          <h2>Product List</h2>
          <table class="table table-striped">
            
                   
            <thead>
              <tr>
                <th>Product Name</th>
                <th>Price</th>
              </tr>
            </thead>
            <tbody>
                 <% for (bookdtl b : list) { %>   
              <tr>
                <td><%=b.getBookName()%></td>
                <td><%=b.getPrice()%></td>
              </tr>
               <% } %>
              
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="collapse" id="wishlist">
      <div class="row mt-3">
        <div class="col-md-12">
          <h2>Wishlist</h2>
          <table class="table table-striped">
            <thead>
              <tr>
                <th>Product Name</th>
                <th>Price</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Product 1</td>
                <td>$10.00</td>
              </tr>
              <tr>
                <td>Product 2</td>
                <td>$20.00</td>
              </tr>
              <tr>
                <td>Product 3</td>
                <td>$30.00</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
     </div>
 <section> 
  <script>
    $(document).ready(function() {
      $('#wishlist').on('show.bs.collapse', function () {        
        $('#products-list').collapse('hide');
      });
      $('#products-list').on('show.bs.collapse', function () {        
        $('#wishlist').collapse('hide');
      });
    });
    $(document).ready(function() {
  $('#notification-icon').click(function() {
    $('.notification-popup').toggle();
  });
});

</script>





<script src="https://www.gstatic.com/firebasejs/8.2.10/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.2.10/firebase-database.js"></script>
</body>
</html>
