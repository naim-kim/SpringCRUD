<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.example.board.BoardVO" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Board</title>
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
        }

        table {
            width: 100%;
        }

        tr, td {
            padding: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        button {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #2980b9;
        }

        .goback {
            background-color: #e74c3c;
            margin-left: auto;
        }

       .goback:hover {
            background-color: #c0392b;
        }

    </style>
</head>
<body>

<h1>View Board</h1>
<div>
<table>
    <tr><td>이름</td><td>${boardVO.name}</td></tr>
    <tr><td>학번</td><td>${boardVO.studentnum}</td></tr>
    <tr><td>연락쳐</td><td>${boardVO.phonenum}</td></tr>
    <tr><td>학부</td><td>${boardVO.major}</td></tr>
</table>
<button class="goback" type="button" onclick="location.href='../list'">Go Back</button>
<button type="button" onclick="location.href='../editpost/${boardVO.seq}'">Edit</button>
</div>

</body>
</html>