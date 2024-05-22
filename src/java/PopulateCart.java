/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import Hotel.Cartsssss;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author ovie
 */
@WebServlet("/add-to-cart")
public class PopulateCart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        PrintWriter out = response.getWriter();
        ArrayList<Cartsssss> cartList = new ArrayList<>();

        int id = Integer.parseInt(request.getParameter("id"));
        Cartsssss nc = new Cartsssss();
        nc.setId(id);
        nc.setQuantity(1);

        HttpSession session = request.getSession();
        ArrayList<Cartsssss> cart_list = (ArrayList<Cartsssss>) session.getAttribute("cart-list");

        if (cart_list == null) {
            cartList.add(nc);
            session.setAttribute("cart-list", cartList);
            out.print("Cart added");
        } else {
            cartList = cart_list;
            boolean exist = false;

            for (Cartsssss c : cartList) {
                if (c.getId() == id) {
                    exist = true;
//                    out.print("product exist: " + c.getId());
                    out.print("Item already exists");
                    
                } 
            }
            if(!exist){
            cartList.add(nc);
//            out.print("Product Added");
            response.sendRedirect("index.jsp");
            }
        }
            for(Cartsssss c: cart_list){
            out.print(c.getId());
            }
        

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
