<%--
  Created by IntelliJ IDEA.
  User: maryna.pyrozhenko
  Date: 5/23/2020
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Record in Address Book</title>
</head>
<body>
<form action="/records/create" method="post">
    <%@include file="header.html" %>
    <br>
    <%String errorMsg = request.getAttribute("error") == null ? "" : (String) request.getAttribute("error");%>
    <p><%=errorMsg%>
    </p>
    <br>
    <table>
        <tr>
            <td>
                <label for="firstName">First name: </label>
            </td>
            <td>
                <input type="text" id="firstName" name="firstName">
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastName">Last name: </label>
            </td>
            <td>
                <input type="text" id="lastName" name="lastName">
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <input type="text" id="address" name="address">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>

</form>
</body>
</html>
