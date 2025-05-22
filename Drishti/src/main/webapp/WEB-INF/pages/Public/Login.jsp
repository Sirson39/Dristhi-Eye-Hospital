<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Drishti Eye Care – Login</title>
  <!-- Application CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Publiccss/style.css" />
</head>
<body>
  <nav class="navbar">
    <ul class="nav-menu">
      <li><a href="${pageContext.request.contextPath}/Home" class="active">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/AboutUs">About Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Teams">Our Teams</a></li>
      <li><a href="${pageContext.request.contextPath}/ContactUs">Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath}/login">Login/Sign Up</a></li>
    </ul>
  </nav>

  <div class="container_Registration">
    <div class="left">
      <img src="${pageContext.request.contextPath}/resources/images/loginpic.png"
           alt="Login Illustration" />
    </div>
    <div class="right">
      <h3>Log In to Drishti Eye Care</h3>

      <!-- Display error message if one exists -->
      <c:if test="${not empty error}">
        <div class="error">${error}</div>
      </c:if>

      <form method="post" action="${pageContext.request.contextPath}/login">
        <label for="email">Email</label>
        <input type="email"
               id="email"
               name="email"
               placeholder="Enter your email"
               required />

        <label for="password">Password</label>
        <input type="password"
               id="password"
               name="password"
               placeholder="Enter your password"
               required />

        <p>No account yet?
          <a href="${pageContext.request.contextPath}/signup">Create one</a>
        </p>

        <button type="submit">Log In</button>
      </form>
    </div>
  </div>
</body>
</html>
