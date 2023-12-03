<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        /*input[type="text"]:required {
            border: 1px solid #ff0000;  Add a red border for better visibility
        }
        */
    </style>

    <title>Title</title>
</head>
<body>
<form action="addok" method="post">
    <table id="edit">
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" required="required"/></td>
        </tr>
        <tr>
            <td>학번</td>
            <td><input type="text" name="number" required="required"/></td>
        </tr>
        <tr>
            <td>학부</td>
            <td><input type="text" name="major" required="required"/></td>
        </tr>
        <tr>
            <td><a href="list">View All Records</a></td>
            <td align="right"><input type="submit" value="Add Post"/></td>
        </tr>
    </table>
</form>
</body>
</html>
