<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

        form {
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

        button[type="button"] {
            background-color: #e74c3c;
            margin-left: auto;
        }

        button[type="button"]:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id="edit">
<tr><td>이름:</td><td><input type="text" name="name" required/></td></tr>
<tr><td>학번:</td><td><input type="text" name="studentnum" required/></td></tr>
    <!-- phone num varchar(10) demo 라 개인정보 보호? 차원에서 설정함-->
<tr><td>연락처:</td><td><input type="text" name="phonenum" required/></td></tr>
<tr><td>학부:</td><td><input type="text" name="major" required/></td></tr>
</table>
    <button type="button" onclick="location.href='list'">Go Back</button>
    <button type="submit">Add</button>
</form>

</body>
</html>