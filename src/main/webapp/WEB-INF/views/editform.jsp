<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.spring.board.BoardVO" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Edit Form</title>
</head>
<body>
<%--@elvariable id="boardVO" type="com.example.spring.board.*"--%>
<form:form commandName="boardVO" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr>
            <td>Name</td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td>Number</td>
            <td><form:input path="number"/></td>
        </tr>
        <tr>
            <td>Major</td>
            <td><form:input path="major"/></td>
        </tr>
        <tr>
            <td>Redgate</td>
            <td><form:input path="redgate" type="date"/></td>
            <!-- Assuming redgate is a date field; adjust type accordingly -->
        </tr>
    </table>
    <input type="submit" value="Edit">
    <input type="button" value="Exit" onclick="history.back()">
</form:form>
</body>
</html>
