<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.User"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ExpenseDao"%>
<%@page import="com.entity.Expense"%>
<html>
<head>
    <style>
        /* Basic styling for navbar */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .navbar-heading {
            color: white;
            margin-left: 20px;
        }

        .navbar-links {
            text-align: center;
        }

        .navbar a {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .navbar input[type=text] {
            padding: 6px;
            margin-top: 8px;
            margin-bottom: 8px;
            margin-right: 10px;
            border: none;
            font-size: 17px;
            background-color: #f1f1f1;
        }

        .navbar button[type=submit] {
            padding: 6px 10px;
            margin-top: 8px;
            margin-bottom: 8px;
            margin-right: 20px;
            border: none;
            background-color: #4CAF50;
            color: white;
            font-size: 17px;
            cursor: pointer;
        }

        .navbar button[type=submit]:hover {
            background-color: #45a049;
        }

        /* Styling for logout button */
        .logout-button {
            border: none;
            color: white;
            padding: 14px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            margin-right: 20px;
            cursor: pointer;
        }

        .logout-button:hover {
            background-color: red;
        }

        /* Styling for the expense table */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="navbar-heading">
        <h1>Expense Tracker</h1>
    </div>
    <div class="navbar-links">
        <a href="addExpense.jsp">Add Expense</a>
        <a href="viewExpense.jsp">View Expense</a>
    </div>
    <!-- Logout button -->
    <a class="logout-button" href="logout">Logout</a>
    <form action="#" method="GET">
        <input type="text" placeholder="Search.." name="search">
        <button type="submit">Search</button>
    </form>
</div>

<div class="container">
    <h2>View Expenses</h2>
    <table>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Date</th>
            <th>Time</th>
            <th>Price</th>
        </tr>
       <tbody>
       <% 
       User user=(User)session.getAttribute("user");
       ExpenseDao dao=new ExpenseDao(HibernateUtil.getSessionFactory());
       ArrayList<Expense> list = dao.getExpensesByUserId(user);
       for(Expense ex: list){
       %>
       <tr>
            <td><%=ex.getTitle() %></td>
            <td><%=ex.getDescription() %></td>
            <td><%=ex.getDate() %></td>
            <td><%=ex.getTime() %></td>
            <td><%=ex.getPrice() %></td>
        </tr>
       <%
       }%>
       
       </tbody>
    </table>
</div>

</body>
</html>
