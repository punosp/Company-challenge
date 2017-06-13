/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acme.controller;

import com.acme.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acme.model.*;
import com.acme.util.Database;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sonu1212
 */
public class UserController extends HttpServlet {
      // For Tomcat, define as <Resource> in context.xml and declare as <resource-ref> in web.xml.
    
    private UserDao dao;

    @Override
    public void init() {
        dao = new UserDao();
    }
    

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
       HttpSession session=request.getSession();
       int ID=0;
        String page = request.getParameter("page");
        String ID1=request.getParameter("ID");
        if(ID1!=null)
         ID =Integer.parseInt(request.getParameter("ID"));
        String prepage =request.getParameter("prepage");
       
       
        try (PrintWriter out = response.getWriter()) {
            
             
           if(page.equals("table"))
           {
               if(prepage.equals("add"))
               {
                   int id=0;
                   String id1=request.getParameter("id");
                   if(id1!=null)
                    id =Integer.parseInt(request.getParameter("id"));
                   String name =request.getParameter("name");
                   String designation =request.getParameter("designation");
                   String manager =request.getParameter("manager");
                  ArrayList<Integer> match=dao.getId();
                   for(int i : match)
                   {
                       if(id==i)
                       {
                           ArrayList<String> manage = dao.getManager();
                              request.setAttribute("emp", manage);
                            request.setAttribute("fail", "fail");
            request.getRequestDispatcher("/jsp-html/add.jsp").forward(request, response);
                           
                       }
                   }
                   dao.setEmployee(id,name,designation,manager);
                   
               }
               if(prepage.equals("edit"))
               {
                   int id=0;
                   String id1=request.getParameter("id");
                   if(id1!=null)
                    id =Integer.parseInt(request.getParameter("id"));
                   String name =request.getParameter("name");
                   String designation =request.getParameter("designation");
                   String manager =request.getParameter("manager");
                 
                   
                   dao.updateEmployee(id,name,designation,manager);
                   
                   
               }
               
               ArrayList<User> emp = dao.getEmployee();
            request.setAttribute("emp", emp);
            request.getRequestDispatcher("/jsp-html/table.jsp").forward(request, response);
               
               
            
           }
          if(page.equals("list"))
          {
              ArrayList<User> emp = dao.getEmployee();
             // ArrayList<User> oldMang = dao.getEmployee();
            request.setAttribute("emp", emp);
            request.setAttribute("emd", emp);
            request.setAttribute("eme", emp);
            request.setAttribute("emf", emp);
            request.setAttribute("emg", emp);
            request.setAttribute("emh", emp);
            request.setAttribute("emi", emp);
           // request.setAttribute("old", oldMang);
            request.getRequestDispatcher("/jsp-html/list.jsp").forward(request, response);
          }
          if(page.equals("tree"))
          {
              ArrayList<User> emp = dao.getEmployee();
            request.setAttribute("emp", emp);
            request.setAttribute("emd", emp);
            request.setAttribute("eme", emp);
            request.setAttribute("emf", emp);
            request.setAttribute("emg", emp);
            request.setAttribute("emh", emp);
            request.setAttribute("emi", emp);
            request.getRequestDispatcher("/jsp-html/tree.jsp").forward(request, response);
          }
          if(page.equals("home"))
          {
              ArrayList<User> emp = dao.getEmployee();
            request.setAttribute("emp", emp);
            request.getRequestDispatcher("/index.html").forward(request, response);
          }
          if(page.equals("add"))
          {
              ArrayList<String> manager = dao.getManager();
            request.setAttribute("emp", manager);
              request.getRequestDispatcher("/jsp-html/add.jsp").forward(request, response);
          }
           if(page.equals("edit"))
          {
              User  show = dao.getSingle(ID);
             request.setAttribute("sshow", show);
            ArrayList<String> manager = dao.getManager();
            request.setAttribute("emp", manager);
              request.getRequestDispatcher("/jsp-html/edit.jsp").forward(request, response);
          }
             if(page.equals("show"))
          {
              User  show = dao.getSingle(ID);
              
             request.setAttribute("sshow", show);
             if(ID==1)
              request.getRequestDispatcher("/jsp-html/show1.jsp").forward(request, response);
             else
                request.getRequestDispatcher("/jsp-html/show.jsp").forward(request, response); 
          }
           
        
           
             
             
    
            
                
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
