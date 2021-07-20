<%--
  Created by IntelliJ IDEA.
  User: ayuanshi
  Date: 7/19/2021
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
<h3>Hi,<%=request.getAttribute("user")%></h3>
<p> Welcome to Homepage!</p>
<a href="index.jsp">Login Page</a>
</body>
</html>
