/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.esr.servlets;

import com.esr.database.FoodDao;
import com.esr.entities.Food;
import com.esr.entities.Message;
import com.esr.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author areeb
 */
public class UpdateFoodServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateFoodServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            int id = Integer.parseInt(request.getParameter("foodId"));
            String name = request.getParameter("foodName");
            int price = Integer.parseInt(request.getParameter("foodPrice"));
            
            Food f = new Food();
            f.setFoodId(id);
            f.setFoodName(name);
            f.setPrice(price);
            
            FoodDao dao1 = new FoodDao(ConnectionProvider.getConnection());
            
            if (dao1.updateFood(f)) {;
                //          successfully Inserted
                out.println("Updated Successfully");
                //response.sendRedirect("StaffPage.jsp");
            } else {
//                error///
                Message msg = new Message("Invalid Details ! try with another", "error", "alert-danger");
                HttpSession s = request.getSession();
                s.setAttribute("foodList", f);
                s.setAttribute("msg", msg);
                out.println("Updated Failed");
                //response.sendRedirect("StaffPage.jsp");

            }

            
            
            
            out.println("</body>");
            out.println("</html>");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UpdateFoodServlet.class.getName()).log(Level.SEVERE, null, ex);
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
