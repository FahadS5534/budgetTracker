package com.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Expense;
import com.entity.User;


import antlr.collections.List;

public class ExpenseDao {

    private SessionFactory factory;

    public ExpenseDao(SessionFactory factory) {
        this.factory = factory;
    }

    public boolean saveExpense(Expense expense) {
        boolean saved = false;
        Session session = null;
        Transaction transaction = null;

        try {
            session = factory.openSession();
            transaction = session.beginTransaction();
            session.save(expense);
            transaction.commit();
            saved = true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }

        return saved;
    }
    public ArrayList<Expense> getExpensesByUserId(User user) {
    	
    	ArrayList<Expense> list=new ArrayList<Expense>();
        try (Session session = this.factory.openSession()) {
            Query query = session.createQuery("FROM Expense WHERE user = :us");
            
            query.setParameter("us", user);
        list=(ArrayList<Expense>) query.list();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
          
        }
		return list;
    }
}
