<%-- 
    Document   : home
    Created on : Apr 25, 2023, 9:50:29 AM
    Author     : hp
--%>

<%@page import="com.entity.Message"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.bookdtl"%>
<%@page import="com.DAO.bookdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="allcomponents/allcss.jsp" %>
        
         <%@page import="com.DB.DBConnect"%>
          <link href="favicon.ico" rel="shortcut icon">
    <!-- Base Google Font for Web-app -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <!-- Google Fonts for Banners only -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,800" rel="stylesheet">
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="allcomponents/bootstrap.min.css">
    <!-- Font Awesome 5 -->
    <link rel="stylesheet" href="allcomponents/fontawesome.min.css">
    <!-- Ion-Icons 4 -->
    <link rel="stylesheet" href="allcomponents/ionicons.min.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="allcomponents/animate.min.css">
    <!-- Owl-Carousel -->
    <link rel="stylesheet" href="allcomponents/owl.carousel.min.css">
    <!-- Jquery-Ui-Range-Slider -->
    <link rel="stylesheet" href="allcomponents/jquery-ui-range-slider.min.css">
    <!-- Utility -->
    <link rel="stylesheet" href="allcomponents/utility.css">
    <!-- Main -->
    <link rel="stylesheet" href="allcomponents/bundle.css">
    <link rel="stylesheet" href="allcomponents/style.css">
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
      <section>
        <div class="box-container">
          
            <div class="container-hover effect-border-scaling-gray">
          <div class="text">
            <p>Discover our ultimate platform for buying, selling, and accessing e-books at low prices.</p>
            <p> Sell your pre-loved books, set your own prices, and connect with fellow bookworms.</p>
              <p> Access a diverse range of genres and authors with our affordable e-book collection for just 50/- per month.</p>
                <p> Join us in promoting reading and sustainability while enjoying a world of affordable reading.</p>
          </div>
          </div>
        </div>
        </section>


  <!-- Men-Clothing -->
    <section id="all-products" class="section-maker">
        <div class="container">
            <div class="sec-maker-header text-center">
                <h3 class="sec-maker-h3">OLD BOOKS</h3>
                <ul class="nav tab-nav-style-1-a justify-content-center">
                    <li class="nav-item">
                        <a href="home.jsp?Cat=All#fixed-products">All</a>
                    </li>
                    <li class="nav-item">
                        <a href="home.jsp?Cat=fixed#fixed-products">Fixed Rate</a>
                    </li>
                    <li class="nav-item">
                        <a href="home.jsp?Cat=Negotiabile#fixed-products">Negotiable</a>
                    </li>
                    
                </ul>
            </div>
        </div>
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
             <div id="fixed-products" class="container">
  <div class="row">
    
         <%
    String cat = request.getParameter("Cat");
    bookdao dao = new bookdao(DBConnect.getConnection());
    List<bookdtl> list = null;

    if (cat != null && cat.trim().equals("fixed")) {
        list = dao.getBooksByFixed();
    } else if(cat != null && cat.trim().equals("Negotiabile")){
         list = dao.getBooksByNegotiabile();
    }
    else{
    list = dao.getAllProducts();
             }
    for (bookdtl b : list) {
%> 
<!-- code to display book details goes here -->


                      
             <div class="col-md-3">
             <div class="item" >
                                        <div class="image-container">
                                            <a class="item-img-wrapper-link" href="single-product.html">
                                                <img class="img-fluid" src="book/<%=b.getBookpath()%>" alt="Product">
                                            </a>
                                            <div class="item-action-behaviors">
                                                <a class="item-quick-look" data-toggle="modal" href="detail.jsp?id=<%=b.getBookId()%>">Quick Look
                                                </a>
                                                <a class="item-mail" href="javascript:void(0)">Mail</a>
                                              
                                               <% if(us==null){%>
                                                   <a class="item-addCart" href="login.jsp">Add to Cart</a>

                                                    <% }  else{%>
                                                   <a class="item-addCart" href="">Add to Cart</a>
                                                <%}%>
                                               
                                            </div>
                                                   </div>
                                        
                 <div class="item-content">
                                            <div class="what-product-is">
                                                <ul class="bread-crumb">
                                                    <li class="has-separator">
                                                       <%=b.getBookCategiries()%>
                                                    </li>
                                                    <li class="has-separator">
                                                        <%=b.getSubCategiries()%>
                                                    </li>
                                                    <li>
                                                        <%=b.getAuthorName()%>
                                                    </li>
                                                     <li>
                                                        <%=b.getAdditionYear()%>
                                                    </li>
                                                </ul>
                                                <h4 class="item-title">
                                                    <%=b.getBookName()%>
                                                </h4>
                                                <h7 class="item-title">
                                                    <%=b.getLocation()%>
                                                </h7>
                                                
                                                <div class="item-stars">
                                                    <div class='star' title="0 out of 5 - based on 0 Reviews">
                                                        <span style='width:0'></span>
                                                    </div>
                                                    <span>(0)</span>
                                                </div>
                                            </div>
                                            <div class="price-template">
                                                <div class="item-new-price">
                                                   <%=b.getBookMRP()%>
                                                </div>
                                                <div class="item-old-price">
                                                   <%=b.getPrice()%>
                                                </div>
                                            </div>
                                                 <% if(us==null){%>
                                                 <button type="submit" onclick="addToWishlist()">Add to Wishlist</button>
                                                  <% }  else{%>
                                                 <form method="post" action="AddToWishlistServlet">
                                                 <input type="hidden" name="useremail" value="<%=us.getEmailid()%>">
                                                <input type="hidden" name="bookId" value="<%=b.getBookId()%>">
                                                <button type="submit">Add to Wishlist</button>
                                                
                                            </form>
                                                <%}%>
                                        </div>
                                        <div class="tag new">
                                            <span><%=b.getDealType()%></span>
                                        </div>

  
                                                  
                                            
                                                
                                                   
                                   
                                         </div> 
                                            
             </div> 
             
                                                       <% }%>
   
             </div></div>
                                    </section>
  <script src="https://www.google-analytics.com/analytics.js" async defer></script>
<!-- Modernizr-JS -->
<script type="text/javascript" src="js/vendor/modernizr-custom.min.js"></script>
<!-- NProgress -->
<script type="text/javascript" src="js/nprogress.min.js"></script>
<!-- jQuery -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- Popper -->
<script type="text/javascript" src="js/popper.min.js"></script>
<!-- ScrollUp -->
<script type="text/javascript" src="js/jquery.scrollUp.min.js"></script>
<!-- Elevate Zoom -->
<script type="text/javascript" src="js/jquery.elevatezoom.min.js"></script>
<!-- jquery-ui-range-slider -->
<script type="text/javascript" src="js/jquery-ui.range-slider.min.js"></script>
<!-- jQuery Slim-Scroll -->
<script type="text/javascript" src="js/jquery.slimscroll.min.js"></script>
<!-- jQuery Resize-Select -->
<script type="text/javascript" src="js/jquery.resize-select.min.js"></script>
<!-- jQuery Custom Mega Menu -->
<script type="text/javascript" src="js/jquery.custom-megamenu.min.js"></script>
<!-- jQuery Countdown -->
<script type="text/javascript" src="js/jquery.custom-countdown.min.js"></script>
<!-- Owl Carousel -->
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<!-- Main -->
<script type="text/javascript" src="js/app.js"></script>

<script>
function addToWishlist() {
  
    alert("Please login to add items to your wishlist");
    window.location.href = "login.jsp";
  
}
</script>
 <script  src="allcomponents/sellform.js"></script>



</body>
</html>