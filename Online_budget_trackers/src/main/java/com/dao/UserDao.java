package com.dao;
import org.hibernate.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entity.User;

public class UserDao {

	private SessionFactory factory;
private Session session=null;
private Transaction  tx=null;


	public UserDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	 public boolean saveUser(User user) {
		 boolean fs=false;
		 try{
			session=factory.openSession();
			tx=session.beginTransaction();
			session.save(user);
			tx.commit();
			fs=true;
		 }
		 
		 catch(Exception e) {
			 if(tx!=null)
			 fs=false;
			System.out.print(e);
		 }
		 return fs;
	 }
	 public User loginUser(String email, String password) {
		    boolean loggedIn = false;
		    User user=null;
		    try {
		        session = factory.openSession();
		        tx = session.beginTransaction();

		        // Create a HQL query to retrieve the user with the provided email and password
		        Query query = session.createQuery("FROM User WHERE email = :email AND password = :password");
		        query.setParameter("email", email);
		        query.setParameter("password", password);
		        
		        // Execute the query and get the result
		         user = (User) query.uniqueResult();
		        
		        // Check if a user with the provided email and password exists
		        if (user != null) {
		        	
		            loggedIn = true;
		            return user;
		        }

		        tx.commit();
		    } catch (Exception e) {
		        if (tx != null) {
		            tx.rollback();
		        }
		        System.out.print(e);
		    } finally {
		        if (session != null) {
		            session.close();
		        }
		    }
		    return user;
		    
		}
	 
}

