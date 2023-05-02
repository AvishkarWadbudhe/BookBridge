<%-- 
    Document   : sellerform
    Created on : Apr 17, 2023, 12:22:49 PM
    Author     : hp
--%>

<%@page import="com.entity.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <title>CodePen - Multi step form, with validation and responsive design, responsive to number of form pages desired</title>
  <link rel="stylesheet" href="allcomponents/styleform.css">

</head>
 <%
    // Retrieve user object from session
    user currentUser = (user) session.getAttribute("CurrentUser");
    if (currentUser != null) {
        String username = currentUser.getUsername();
        String email = currentUser.getEmailid();
        // Use the username and email as needed in your profile.jsp page
%>
<body>
<!-- partial:index.partial.html -->
<!DOCTYPE html>

  <link rel="stylesheet" href="allcomponents/styleform.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   
         
        <div class="container">
            <header>Book Sells </header>
            <div class="progress-bar">
                <div class="step">
                    <p>Book basic Info</p>
                    <div class="bullet">
                        <span>1</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="step">
                    <p>Book Details</p>
                    <div class="bullet">
                        <span>2</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="step">
                    <p>Deal Info</p>
                    <div class="bullet">
                        <span>3</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                
            </div>
            <div class="form-outer">
                <form action="BooksUploadServlet" method="post" enctype="multipart/form-data" >
                     <div class="page slide-page">
                    
                   
                        <div class="title">Book basic Info:</div>
                        <div class="field">
                            <div class="label">Book Title</div>
                            <input type="text" name="Title" required />
                        </div>
                        <div class="field">
                        <div class="label">Categories:</div>
                             <select id="categories" name="categories"  onchange="updateSubcategories()" required>
                                           <!-- Options will be dynamically populated using JavaScript -->
                               </select>
                        </div>
                        <div class="field">
                        <div class="label">Subcategories:</div>
                                <select id="subcategories" name="subcategories" required>
                                          <!-- Subcategories will be dynamically populated based on selected category -->
                                </select>
                        </div>
                          <div class="field">
                            <button class="firstNext next">Next</button>
                        </div>
                    </div> 
                        
                        <div class="page">
                        <div class="title">Book Detail:</div>
                      
                        <div class="field">
                            <div class="label">Book Author Name</div>
                            <input type="text" name="Author"  required />
                        </div>
                        
                        <div class="field">
                            <div class="label">Addition year</div>
                            <input type="text" name="Addition" required />
                        </div>
                        <div class="field">
                            <div class="label">Book MRP</div>
                            <input type="text" name="MRP" required />
                        </div>
                        <div class="field">
                            <div class="label">Book Image</div>
                            <input type="file" name="image" required />
                        </div>
                        <div class="field">
                            <div class="label">Book Discription</div>
                            <input type="text" name="discription" required />
                        </div>
                          <div class="field btns">
                            <button class="prev-1 prev">Previous</button>
                            <button class="next-1 next">Next</button>
                        </div>
                        </div>

                   
                     <div class="page">
                        <div class="title">Deal Info:</div>
                        
                        <div class="field">
                            <div class="label">Price</div>
                            <input type="text" name="price" required />
                        </div>
                            <div class="field">
                            <div class="label">Deal Type</div>
                            <input type="text" name="Dealtype" required />
                        </div>
                        <div class="field">
                            <div class="label">Location(city,district,state,country)</div>
                            <input type="text" name="location" required />
                        </div>
                         <div class="field">
                            <div class="label">EmailId</div>
                            <input type="text" name="email" value="<%=currentUser.getEmailid()%>">
                        </div>
                        <div class="field btns">
                            <button class="prev-5 prev">Previous</button>
                            <button class="submit">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <script src="script.js"></script>
    
<!-- partial -->
  <script  src="allcomponents/script.js"></script>
<script  src="allcomponents/sellform.js"></script>
</body>
 <% } else {
        // Handle case when User object is not found in session
        // Redirect to login page or display an error message
        response.sendRedirect("login.jsp");
    }
    %>
</html>

