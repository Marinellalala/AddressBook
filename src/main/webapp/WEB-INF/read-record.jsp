<%--
  Created by IntelliJ IDEA.
  User: maryna.pyrozhenko
  Date: 5/23/2020
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read record from Address Book</title>
</head>
<body>
<form action="records/read" method="get">
    <%@include file="header.html" %>
    <br>
    <%
        String address = (String) request.getAttribute("address");
    %>
    <p>First name: <b><%=request.getParameter("first-name")%>
    </b></p>
    <p>Last name: <b><%=request.getParameter("last-name")%>
    </b></p>
    <p>Address: <b><%=address%>
    </b></p>
</form>
</body>
</html>
