<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
 <%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<%--@elvariable id="boardVO" type=""--%>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
	<tr><td>이름</td><td><form:input path="name" /></td></tr>
	<tr><td>학번</td><td><form:input path="studentnum" /></td></tr>
	<tr><td>연락처</td><td><form:input path="phonenum" /></td></tr>
	<tr><td>학부</td><td><form:input path="major" /></td></tr>
	</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="Cancel" onclick="history.back()" />
</form:form>

</body>
</html>