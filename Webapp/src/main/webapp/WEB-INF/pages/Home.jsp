<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Hello World</h1>
 <%
        Cookie[] cookies = request.getCookies();
        String username = null;

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("username".equals(cookie.getName())) {
                    username = cookie.getValue();
                    break;
                }
            }
        }
    %>

    <% if (username != null) { %>
        <p>Welcome back, <b><%= username %></b>!</p>
    <% } else { %>
        <p>Welcome, Guest!</p>
    <% } %>

    <a href="<%= request.getContextPath() %>/">Log Out</a>
</body>
</html>