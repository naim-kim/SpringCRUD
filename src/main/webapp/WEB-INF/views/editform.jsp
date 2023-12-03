<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.spring.board.BoardVO ,com.example.spring.board.BoardDAO" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <link rel="stylesheet" href="css/style.css">

    <title>Edit Form</title>
</head>
<body>

<%@ page import="com.example.spring.board.BoardVO" %>
<%--@elvariable id="boardVO" type="com.example.spring.board.BoardVO" --%>
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
    </table>
    <input type="submit" value="Edit">
    <input type="button" value="Exit" onclick="history.back()">
</form:form>
</body>
</html>
