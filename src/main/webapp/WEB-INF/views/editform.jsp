<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
 <%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f4f4f4;
			margin: 0;
			padding: 0;
		}

		h1 {
			background-color: #3498db;
			color: #fff;
			padding: 20px;
			margin: 0;
		}

		div {
			max-width: 600px;
			margin: 20px auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			display: flex;
			flex-direction: column;
		}

		table {
			width: 100%;
		}

		tr, td {
			padding: 10px;
		}

		button {
			background-color: #3498db;
			color: #fff;
			border: none;
			padding: 10px 20px;
			cursor: pointer;
			border-radius: 5px;
			margin: 5px;
		}

		button:hover {
			background-color: #2980b9;
		}

		.goback {
			background-color: #e74c3c;
		}

		.goback:hover {
			background-color: #c0392b;
		}

		.edit-button {
			background-color: #3498db;
			color: #fff;
			border: none;
			padding: 10px 20px;
			cursor: pointer;
			border-radius: 5px;
			margin-left: 10px;
		}

		.edit-button:hover {
			background-color: #2980b9;
		}
	</style>
</head>
<body>

<h1>Edit Form</h1>
<%--@elvariable id="boardVO" type=""--%>
<div>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
	<tr><td>이름</td><td><form:input path="name" /></td></tr>
	<tr><td>학번</td><td><form:input path="studentnum" /></td></tr>
	<tr><td>연락처</td><td><form:input path="phonenum" /></td></tr>
	<tr><td>학부</td><td><form:input path="major" /></td></tr>
	</table>
	<button class="goback" type="button" onclick=history.back()>Go Back</button>
	<button class="edit-button" type="submit">Edit</button>
</form:form>

</div>
</body>
</html>