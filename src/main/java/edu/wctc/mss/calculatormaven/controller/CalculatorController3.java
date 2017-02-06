/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.mss.calculatormaven.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.wctc.mss.calculatormaven.model.CalculatorCircleService;
import edu.wctc.mss.calculatormaven.model.CalculatorRectangleService;
import edu.wctc.mss.calculatormaven.model.CalculatorTriangleService;

/**
 *
 * @author Spike
 */
@WebServlet(name = "CalculatorController3", urlPatterns = {"/calc3"})
public class CalculatorController3 extends HttpServlet {

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
        
        String calcType = request.getParameter("calctype");
        
        if (calcType.equals("rectangle")) {
            System.out.println("Calc area of rectangle");
            
            CalculatorRectangleService service = new CalculatorRectangleService(); 

            double width = Double.parseDouble(request.getParameter("width"));
            double length = Double.parseDouble(request.getParameter("length"));
        
            double area = service.findAreaOfRectangle(width, length);
            request.setAttribute("rectangleArea", area);
        }
        else if (calcType.equals("circle")) {
            System.out.println("Calc area of circle");
            
            CalculatorCircleService service = new CalculatorCircleService();

            double radius = Double.parseDouble(request.getParameter("radius"));

            double area = service.findAreaOfCircle(radius);
            request.setAttribute("circleArea", area);
        }
        else if (calcType.equals("triangle")) {
            System.out.println("calc area of triangle");
            
            CalculatorTriangleService service = new CalculatorTriangleService();

            double aTri = Double.parseDouble(request.getParameter("aTriangle"));
            double bTri = Double.parseDouble(request.getParameter("bTriangle"));

            double hyp = service.findHypotenuseOfTriangle(aTri, bTri);
            request.setAttribute("triangleHyp", hyp);
        }
        else {
            System.out.println("Error: No calctype found");
        }
        
        RequestDispatcher view = request.getRequestDispatcher("/CalculatorInputAndOutputForm3.jsp");
        view.forward(request, response);
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
