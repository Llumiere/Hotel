/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ovie
 */
@WebServlet("/AuthServlets")
public class AuthServlets extends HttpServlet {

//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//
//        String username = request.getParameter("user");
//
//        HttpSession session = request.getSession();
//        session.setAttribute("usern", username);
//
//        out.println("<h2>Welcome " + username + "</h2>");
//
//        out.println("<a href='DummyServlet'>Visit</a>");
//
//    }

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

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("user");
        String password = request.getParameter("pass");

        LoginDao ld = new LoginDao();
        HttpSession session = request.getSession();

        if (ld.validator(username, password) == 2) {
            session.setAttribute("auth", username);
            
            out.print("<p class='bg-info text-light p-2 sticky-top'>Welcome " + username + "</p>");
            RequestDispatcher dispatch = request.getRequestDispatcher("/index.jsp");
            dispatch.include(request, response);
            
        }
        else if(ld.validator(username, password) == 1) {
            session.setAttribute("auth", username);
            
            out.print("<p class='bg-info text-light p-2 sticky-top'>Welcome Admin, " + username + "</p>");
            RequestDispatcher dispatch = request.getRequestDispatcher("/Admin.jsp");
            
            dispatch.include(request, response);
            
        } else if (username.equals("") || password.equals("")) {

            out.print("<h4 class='d-flex justify-content-center text-light p-2'>Please Provide valid credentials</h4>");
            RequestDispatcher dispatch = request.getRequestDispatcher("/login.jsp");
            dispatch.include(request, response);
        } else {
            out.print("<h4 class='d-flex justify-content-center text-danger p-2'>Invalid credentials</h4>");
            RequestDispatcher dispatch = request.getRequestDispatcher("/login.jsp");
            dispatch.include(request, response);
        }

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
