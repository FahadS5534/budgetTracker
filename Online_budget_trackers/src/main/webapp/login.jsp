<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <style>
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
    body {
      font-family: Arial, sans-serif;
    }
    .container {
      width: 50%;
      margin: 0 auto;
      margin-top: 50px;
    }
    .form-group {
      margin-bottom: 20px;
    }
    label {
      display: block;
      margin-bottom: 5px;
    }
    input[type=text], input[type=email], input[type=password], textarea {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
    input[type=submit] {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin-top: 10px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      width: 100%;
      font-size: 16px;
    }
    input[type=submit]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

<div class="navbar">
  <div class="navbar-heading">
    <h1>Expense Tracker</h1>
  </div>
  <div class="navbar-links">
    <a href="index.jsp">Home</a>
    <a href="login.jsp">Login</a>
    <a href="register.jsp">Register</a>
  </div>
  
</div>

<div class="container">
  <h2>Login</h2>
  <form action="LoginServlet" method="POST">
    
    <div class="form-group">
      <label for="email">Email</label>
      <input type="email" id="email" name="email" required>
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" required>
    </div>
 
    <input type="submit" value="Login">
  </form>
</div>

</body>
</html>