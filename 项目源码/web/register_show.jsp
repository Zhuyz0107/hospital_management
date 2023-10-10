<%--
  Created by IntelliJ IDEA.
  User: 张宸菘
  Date: 2022/5/7
  Time: 8:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <title>挂号单查询</title>
    <link rel="stylesheet" href="x-admin/css/student_query.css">
    <link rel="stylesheet" href="x-admin/css/iconfont.css">
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $("a.deleteClass").click(function () {
                return confirm("确定要删除【" + $(this).parent().parent().find("td:first").next().text() + "】吗");
            });
        });

    </script>
</head>
<body>

<div class="box">
    <a href="ListRegisterServlet" class="back">返回</a>
    <table>
        <tr>
            <td>挂号编号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>问题</td>

        </tr>
        <tr class="input">
            <td>${requestScope.register.rid}</td>
            <td>${requestScope.register.rname}</td>
            <td>${requestScope.register.rgender}</td>
            <td>${requestScope.register.rage}</td>
            <td>${requestScope.register.problem}</td>

        </tr>
    </table>
</div>
</body>
</html>
