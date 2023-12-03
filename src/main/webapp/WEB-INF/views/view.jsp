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
</head>
<body>

<h1>View Board</h1>

<table>
    <tr><td>이름</td><td>${boardVO.name}</td></tr>
    <tr><td>학번</td><td>${boardVO.studentnum}</td></tr>
    <tr><td>연락쳐</td><td>${boardVO.phonenum}</td></tr>
    <tr><td>학부</td><td>${boardVO.major}</td></tr>
</table>
<button type="button" onclick="location.href='../list'">View List</button>
<button type="button" onclick="location.href='../editpost/${boardVO.seq}'">Edit</button>


</body>
</html>