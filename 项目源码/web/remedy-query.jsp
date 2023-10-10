<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>医院管理系统-后台登陆</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="x-admin/css/font.css">
    <link rel="stylesheet" href="x-admin/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="x-admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="x-admin/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div class="x-body">
    <div class="layui-row">
        <a href="ListRemedyServlet" class="back">返回</a>
    </div>

    <table class="layui-table">
        <thead>
        <tr>
            <th>药品id</th>
            <th>药品名称</th>
            <th>药品价格</th>
            <th>药品数量</th>
            <th>备注</th>
        </tr>
<%--        <c:forEach items="${requestScope.remedies}" var="remedies">--%>
<%--     這個代碼是你自己的，還是粘過來改的
       這是我照著改的--%>
            <tr class="input">
                <td>${requestScope.remedies.rId}</td>
                <td>${requestScope.remedies.rName}</td>
                <td>${requestScope.remedies.rPrice}</td>
                <td>${requestScope.remedies.rNum}</td>
                <td>${requestScope.remedies.rRemark}</td>

            </tr>
<%--        </c:forEach>--%>
        </thead>
    </table>
    <div class="page">
        <div>
            <a class="prev" href="">&lt;&lt;</a>
            <a class="num" href="">1</a>
            <span class="current">2</span>
            <a class="num" href="">3</a>
            <a class="num" href="">489</a>
            <a class="next" href="">&gt;&gt;</a>
        </div>
    </div>

</div>
</body>

</html>