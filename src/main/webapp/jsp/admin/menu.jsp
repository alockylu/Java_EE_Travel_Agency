<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.travelagency.entity.User" %>
<%@ page import="com.travelagency.entity.Agent" %>
<%@ page import="com.travelagency.entity.Admin" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global_styles.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%
    User user = (User) session.getAttribute("validUser");
    if (user == null) {
        RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/index.jsp");
        rd.forward(request, response);
    } else if (!(user instanceof Admin)) {
        RequestDispatcher rd = request.getRequestDispatcher("/jsp/error/accessDenied.jsp");
        rd.forward(request, response);
    }
%>
<html>
<head>
    <title>Admin Menu</title>
</head>
<body>
<h2>Welcome, Admin.</h2>
<h2>Resources:</h2>
<div class="navbar">
    <a href="${pageContext.request.contextPath}/jsp/clients/clients.jsp">Clients</a>
    <a href="${pageContext.request.contextPath}/jsp/contracts/contracts.jsp">Contracts</a>
    <a href="${pageContext.request.contextPath}/jsp/travelOffers/offers.jsp">Travel Offers</a>
    <a href="${pageContext.request.contextPath}/logout">Log Out</a>
</div>
</body>
</html>
