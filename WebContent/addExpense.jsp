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
    input[type=text], input[type=email], input[type=password],input[type=date], input[type=time],textarea {
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
    <a href="login.jsp">View Expense</a>
    <a class="logout-button" href="logout">Logout</a>
  </div>
  
</div>

<div class="container">
  <h2>Add Expenses</h2>
  <form action="save" method="POST">
   
   
   
    <!-- Additional fields for expense tracker -->
    <div class="form-group">
      <label for="title">Title</label>
      <input type="text" id="title" name="title" required>
    </div>
    <div class="form-group">
      <label for="time">Time</label>
      <input type="time" id="time" name="time" required>
    </div>
    <div class="form-group">
      <label for="time">Date</label>
      <input type="date" id="date" name="date" required>
    </div>
    <div class="form-group">
      <label for="description">Description</label>
      <textarea id="description" name="description" rows="4" required></textarea>
    </div>
    <div class="form-group">
      <label for="price">Price</label>
      <input type="text" id="price" name="price" required>
    </div>
 
    <input type="submit" value="Add">
  </form>
</div>

</body>
</html>
