<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Error - Dhristi Eye Hospital</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f8d7da;
      color: #721c24;
      text-align: center;
      padding: 4rem;
    }
    .error-box {
      background-color: #f5c6cb;
      border-radius: 8px;
      padding: 2rem;
      display: inline-block;
    }
    h1 {
      font-size: 2rem;
      margin-bottom: 1rem;
    }
  </style>
</head>
<body>
  <div class="error-box">
    <h1>Oops! Something went wrong.</h1>
    <p>Please try again later or contact support.</p>
    <a href="<%=request.getContextPath()%>/PatientDashboard">Return to Dashboard</a>
  </div>
</body>
</html>
