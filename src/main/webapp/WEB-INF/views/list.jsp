<%@ page import="java.util.List" %>
<%@ page import="com.example.spring.board.BoardVO" %>
<%@ page import="com.example.spring.board.BoardDAO" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Students List</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        }

        h2 {
            color: #006bb3;
        }

        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 90%;
            margin-top: 20px;
        }

        #list th, #list td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list th {
            background-color: #006bb3;
            color: white;
            padding-top: 12px;
            padding-bottom: 12px;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #edit {
            width: 50%;
            margin-top: 20px;
        }

        #edit td {
            padding: 8px;
        }

        input[type="submit"], input[type="button"] {
            background-color: #006bb3;
            color: white;
            padding: 8px;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover, input[type="button"]:hover {
            background-color: #005493;
        }

        a {
            text-decoration: none;
            color: #006bb3;
        }

        a:hover {
            text-decoration: underline;
            color: #005493;
        }
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'board/deleteok/' + id;
        }
    </script>
</head>
<body>

<h1>Club Member List</h1>

<table id="list" width="90%">
    <tr>
        <th>ID</th>
        <th>이름</th>
        <th>학번</th>
        <th>전공</th>
        <th>Redgate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.name}</td>
            <td>${u.number}</td>
            <td>${u.major}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>

</table>

<br>
<a href="add">Add new student</a>
</body>
</html>
