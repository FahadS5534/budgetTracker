package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.db.HibernateUtil;
import com.entity.User;

@WebServlet("/Register")

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public RegisterServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String fullName = request.getParameter("fullname");
		    String email = request.getParameter("email");
		    String password = request.getParameter("password");
		    String about = request.getParameter("about");
		     User u=new User(fullName,email,password,about);
		     
		     UserDao userd=new UserDao(HibernateUtil.getSessionFactory());
		     boolean f=userd.saveUser(u);
		     if(f)
		     {
		    	 response.sendRedirect("login.jsp");
		     }
		     
	}

}
