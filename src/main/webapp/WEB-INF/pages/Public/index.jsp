<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login Page</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
  <div class="flex w-full h-full">
    <!-- Left Side Image -->
    <div class="hidden md:block w-1/2 h-full">
      <img alt="People sitting in a cafe with a tree in the background"
           class="w-full h-full object-cover"
           src="https://storage.googleapis.com/a1aa/image/c06xk1DMUBQxvcZ-eAbJq-myp5SoeFk5XqkkXP0WPek.jpg"
      />
    </div>
    <!-- Right Side Form -->
    <div class="w-full md:w-1/2 bg-white flex items-center justify-center p-8">
      <div class="w-full max-w-md">
        <div class="mb-8 text-center">
          <img alt="Microsoft Logo"
               class="mx-auto mb-4"
               src="https://storage.googleapis.com/a1aa/image/7QymzcOOzV-G8s-Tn8lf1BWmJPitjVAV_zKFtkZSaS8.jpg"
               width="100" height="50"
          />
          <p class="text-gray-700">np01cp4a230444@islingtoncollege.edu.np</p>
        </div>
        <h2 class="text-2xl font-semibold mb-4">Enter password</h2>
        <form method="post" action="${pageContext.request.contextPath}/Login">
          <div class="mb-4">
            <input type="password" name="password"
                   class="w-full p-2 border border-gray-300 rounded"
                   placeholder="Password" required/>
          </div>
          <div class="mb-4 text-right">
            <a href="${pageContext.request.contextPath}/ForgotPassword.jsp"
               class="text-blue-600">Forgot my password</a>
          </div>
          <div class="mb-4 text-right">
            <a href="${pageContext.request.contextPath}/Login.jsp"
               class="text-blue-600">Sign in with another account</a>
          </div>
          <div>
            <button type="submit"
                    class="w-full bg-blue-600 text-white p-2 rounded">
              Sign in
            </button>
          </div>
        </form>
        <div class="mt-8 text-sm text-gray-600 text-center">
          <a href="${pageContext.request.contextPath}/Terms.jsp" class="mr-4">Terms of use</a>
          <a href="${pageContext.request.contextPath}/Privacy.jsp">Privacy &amp; cookies</a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
