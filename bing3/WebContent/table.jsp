<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>过滤空格</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/formServlet" method="post">
    <table>
        <tr>
            <td>
                姓名:<input type="text" name="userName">
            </td>
        </tr>
        <tr>
            <td>
                邮箱:<input type="text" name="email">
            </td>
        </tr>
        <tr>
            <td>
                性别:
                <input type="radio" name="gender" value="男">男
                <input type="radio" name="gender" value="女">女
            </td>
        </tr>
        <tr>
            <td>
                外语:<input type="text" name="language">
            </td>
        </tr>
        <tr>
            <td>
                地区:<input type="text" name="zone">
            </td>
        </tr>
        <tr>
            <td>
                自我介绍:<br>
                <textarea cols="40" rows="10" name="self"></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
