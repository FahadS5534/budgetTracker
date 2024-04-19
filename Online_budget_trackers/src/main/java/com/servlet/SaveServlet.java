package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ExpenseDao;
import com.entity.Expense;
import com.entity.User;
import com.db.HibernateUtil;
@WebServlet("/save")
public class SaveServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SaveServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        String time = request.getParameter("time");
        String date = request.getParameter("date");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        HttpSession session = request.getSession();
        User loggedInUser = (User) session.getAttribute("user");
        // Create an Expense object
        Expense expense = new Expense(title, time, date, description, price,loggedInUser);

        // Create ExpenseDao instance
        ExpenseDao expenseDao = new ExpenseDao(HibernateUtil.getSessionFactory());

        // Save the expense using ExpenseDao
        boolean saved = expenseDao.saveExpense(expense);

        if (saved) {
            response.sendRedirect("home.jsp");
        } else {
            response.getWriter().println("Failed to save expense!");
        }
    }
}
