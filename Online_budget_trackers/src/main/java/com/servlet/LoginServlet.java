package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.HibernateUtil;
import com.entity.User;

@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    String email = request.getParameter("email");
		    String password = request.getParameter("password");
		
		  
		     
		     UserDao userd=new UserDao(HibernateUtil.getSessionFactory());
		     User u =userd.loginUser(email, password);
		     System.out.print(u);
		     if(u!=null)
		     {
		    	 HttpSession session = request.getSession();
		            session.setAttribute("user", u);
		    	 response.sendRedirect("home.jsp");
		     }
		     else {
		    			 response.sendRedirect("error.jsp");    }
		     
}

}
