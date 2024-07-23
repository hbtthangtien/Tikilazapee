/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.UserAccess;

import DAO.UserDAO;
import Model.User.Oauth_Account;
import Model.User.User;
import Service.UserFacebookServce;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author hbtth
 */
public class LoginByFacebook extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        String code = request.getParameter("code");
        Oauth_Account account = (Oauth_Account) UserFacebookServce.getUserFromLoginFacebook(code);
        UserDAO db= new UserDAO();
        User user = db.getOauth_account(account);
        if(user != null){
            user.setAuth(true);
            session.setAttribute("s_u_tikilazapee", user);
        }else{
            db.createOauthAccount(account);
            session.setAttribute("s_u_tikilazapee", db.getOauth_account(account));
        }
        response.sendRedirect("home");
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
