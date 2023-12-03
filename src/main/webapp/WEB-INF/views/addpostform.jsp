<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id="edit">
<tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
<tr><td>학번:</td><td><input type="text" name="studentnum"/></td></tr>
<tr><td>연락처:</td><td><input type="text" name="phonenum"/></td></tr>
<tr><td>학부:</td><td><input type="text" name="major"/></td></tr>
</table>
    <button type="button" onclick="location.href='list'">View list</button>
    <button type="submit">Add</button>
</form>

</body>
</html>