<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="addok" method="post">
    <table id="edit">
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>Number</td>
            <td><input type="text" name="number"/></td>
        </tr>
        <tr>
            <td>Major</td>
            <td><input type="text" name="major"/></td>
        </tr>
        <tr><td><a href="<c:url value='/board/list'/>">View All Records</a>
        </td><td align="right"><input type="submit" value="Add Post"/></td></tr>
    </table>

</form>
</body>
</html>
