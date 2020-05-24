<%--
  Created by IntelliJ IDEA.
  User: maryna.pyrozhenko
  Date: 5/23/2020
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update existing Record in Address Book</title>
</head>
<body>
<form action="/records/update" method="post">
    <%@include file="header.html" %>
    <br>
    <%
        String address = (String) request.getAttribute("address");
    %>
    <table>
        <tr>
            <td>
                <label for="firstname">First name: </label>
            </td>
            <td>
                <input type="text" id="firstname" name="firstname" value="<%=request.getParameter("first-name")%>"
                       disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastname">Last name: </label>
            </td>
            <td>
                <input type="text" id="lastname" name="lastname" value="<%=request.getParameter("last-name")%>"
                       disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <input type="text" id="address" name="address" value="<%=address%>">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>

</form>
</body>
</html>
