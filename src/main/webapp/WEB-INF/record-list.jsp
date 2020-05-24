<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: maryna.pyrozhenko
  Date: 5/22/2020
  Time: 8:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Records from Address Book</title>
</head>
<body>
<%@include file="header.html" %>
<br>
<p>Sort by: <a href="/records/list?sortBy=asc">ascending</a> |
    <a href="/records/list?sortBy=desc">descending</a></p>
<table border="1">
    <tr>
        <th>No.</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Address</th>
        <th colspan="3">Operation</th>
    </tr>
    <%
        List<Map<String, String>> mapList = (List<Map<String, String>>) request.getAttribute("records");
        for (int i = 0; i < mapList.size(); i++) {
    %>
    <tr>
        <th><%=i + 1%>
        </th>
        <th><%=mapList.get(i).get("firstname")%>
        </th>
        <th><%=mapList.get(i).get("lastname")%>
        </th>
        <th><%=mapList.get(i).get("address")%>
        </th>
        <th>
            <a href="/records/read?first-name=<%=mapList.get(i).get("firstname")%>&last-name=<%=mapList.get(i).get("lastname")%>">Read</a>
        </th>
        <th>
            <a href="/records/update?first-name=<%=mapList.get(i).get("firstname")%>&last-name=<%=mapList.get(i).get("lastname")%>">Update</a>
        </th>
        <th>
            <a href="/records/delete?first-name=<%=mapList.get(i).get("firstname")%>&last-name=<%=mapList.get(i).get("lastname")%>">Delete</a>
        </th>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
