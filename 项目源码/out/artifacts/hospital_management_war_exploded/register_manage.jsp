<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!DOCTYPE html>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <link rel="stylesheet" href="x-admin/css/student_manage.css">
    <link rel="stylesheet" href="x-admin/css/iconfont.css">
    <title>挂号管理</title>
    <script type="text/javascript">
        $(function () {
            $(".deleteClass").click(function () {
                return confirm("确定要删除【" + $(this).parent().parent().find("td:first").next().text() + "】吗");
            });
        });
    </script>
</head>
<body>
<div class="mask"></div>
<div class="box1">
    <form action="FindSingleRegisterServlet" method="get">
        <%--        <span class="icon-sousuo"></span>--%>
        <input type="text" name="id" placeholder="请输入挂号编号" class="icon-sousuo">
        <input type="submit" value="查找挂号单" class="submit"><br/>
    </form>
</div>
<div class="box2">
    <form id="form" action="ListRegisterServlet" method="get">
        <table rules="rows">
            <tr class="first">
                <td>挂号编号</td>
                <td>姓名</td>
                <td>科室</td>
                <td>预约医生</td>
                <td>预约时间</td>
                <td>问题</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${requestScope.list }" var="register">
                <tr class="input">
                    <td>${register.rid}</td>
                    <td>${register.rname}</td>
                    <td>${register.dName}</td>
                    <td>${register.dResponsible}</td>
                    <td>${register.rtime}</td>
                    <td>${register.problem}</td>
                    <td class="last"><a href="DeleteRegisterServlet?id=${register.rid}" class="deleteClass">删除</a></td>
                </tr>
            </c:forEach>

            <%--        <tr class="input">--%>
            <%--            <td></td>--%>
            <%--            <td></td>--%>
            <%--            <td></td>--%>
            <%--            <td></td>--%>
            <%--            <td></td>--%>
            <%--            <td id="last"></td>--%>
            <%--        </tr>--%>
        </table>
    </form>
</div>
</body>
</html>
