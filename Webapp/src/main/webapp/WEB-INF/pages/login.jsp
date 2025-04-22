<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/login.css" />
</head>
<body>
    <div class="login-box" style="width: 500px; height: auto;">
        <h2>Registration Form</h2>
        <form action="#" method="post">
            <div class="row">
                <div class="col">
                    <label for="firstName">First Name:</label> 
                    <input type="text" id="firstName" name="firstName" required>
                </div>
                <div class="col">
                    <label for="lastName">Last Name:</label> 
                    <input type="text" id="lastName" name="lastName" required>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="username">Username:</label> 
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="col">
                    <label for="dob">Birthday:</label> 
                    <input type="date" id="dob" name="dob" required>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender" required>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>
                <div class="col">
                    <label for="email">Email:</label> 
                    <input type="email" id="email" name="email" required>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="phone">Phone Number:</label> 
                    <input type="tel" id="phone" name="phone" required>
                </div>
                <div class="col">
                    <label for="subject">Subject:</label> 
                    <input type="text" id="subject" name="subject" value="Computing" readonly>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="password">Password:</label> 
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="col">
                    <label for="confirmPassword">Retype Password:</label> 
                    <input type="password" id="confirmPassword" name="confirmPassword" required>
                </div>
            </div>
            <button type="submit" class="login-button">Submit</button>
        </form>
    </div>
</body>
</html>