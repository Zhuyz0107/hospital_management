<%--
 Created by IntelliJ IDEA.
 User: 张宸菘
 Date: 2022/5/3
 Time: 15:59
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html>--%>

<html>
<head>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <title>管理员登录</title>
    <link type="text/css" rel="stylesheet" href="x-admin/css/index.css">
    <link type="text/css" rel="stylesheet" href="x-admin/css/iconfont.css">
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
</head>
<body>
<h1 align="center">医 院 管 理 系 统</h1>
<div class="box clearfix">
    <div class="msg-title">${ empty requestScope.msg ? "请输入用户名和密码:" :requestScope.msg}</div>
    <form action="LoginServlet" method="post">
        <div class="box1 iconfont clearfix">
            <div class="user icon-yonghuming"></div>
            <input type="text" name="account" class="account" value="${requestScope.account}"></div>
        <div class="box2 iconfont clearfix">
            <div class="pass icon-mima"></div>
            <input type="password" name="password" class="password"><br>
            <input type="submit" value="提交" class="submit"></div>
    </form>
</div>
</body>
</html>
