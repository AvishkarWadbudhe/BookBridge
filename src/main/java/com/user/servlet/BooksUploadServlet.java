/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.user.servlet;
import com.DAO.BookDAOImp;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.entity.Message;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.http.HttpSession;


/**
 *
 * @author hp
 */
@MultipartConfig
@WebServlet(name = "BooksUploadServlet", urlPatterns = {"/BooksUploadServlet"})
public class BooksUploadServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BooksUploadServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            try{
               
            String bookname =request.getParameter("Title");
            String categories =request.getParameter("categories");
            String Subcategories =request.getParameter("subcategories");
            String AuthorName =request.getParameter("Author");
             String AdditionYear =request.getParameter("Addition");
            String BookMRP =request.getParameter("MRP");
            Part part=request.getPart("image");
            String filename =part.getSubmittedFileName();
            String Description =request.getParameter("discription");
            String Price =request.getParameter("Price");
             String DealType =request.getParameter("Dealtype");
              String Location =request.getParameter("Location");
             String email=request.getParameter("email");
              BookDtls bd=new BookDtls(  bookname, categories,  Subcategories,  AuthorName,  AdditionYear, BookMRP, filename,  Description,  Price,  DealType,  Location,email );
              
               BookDAOImp dao=new BookDAOImp(DBConnect.getConnection());
               HttpSession s=request.getSession();
           if(dao.AddBook(bd)){
                out.println("done");
                 Message m= new Message("done","done","alert-danger");
                 s.setAttribute("msg",m);
                 response.sendRedirect("profile.jsp");
            }
           else{
            out.println("error");
//            Message m= new Message("Something wrong","error","alert-danger");
//            
//            s.setAttribute("msg",m);
//            response.sendRedirect("sellerform.jsp");
           }
            }catch(Exception e)
            {
                e.printStackTrace();
            }            
            out.println("<h1>Servlet BooksUploadServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
