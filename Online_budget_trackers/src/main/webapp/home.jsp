<!DOCTYPE html>
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

</body>
</html>
