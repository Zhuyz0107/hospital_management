<%--
  Created by IntelliJ IDEA.
  User: 赵程
  Date: 2023/1/8
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="ListServlet">住院部管理</a>
        <a>
          <cite>患者管理</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="ListPatientServlet" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="FindPatientInfoServlet" method="post">
            <input type="text" name="pid"  placeholder="请输入患者ID" autocomplete="off" class="layui-input">
            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加用户','./bed-add.jsp',600,400)"><i class="layui-icon"></i>添加</button>
        <span class="x-right" style="line-height:40px">共有数据：88 条</span>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th>患者姓名</th>
            <th>患者性别</th>
            <th>入院时间</th>
            <th>诊断结果</th>
            <th>主治医生</th>
            <th>所属科室</th>
            <th>床位号</th>
        </tr>
        <tr class="input">
            <td>${requestScope.patient.pName}</td>
            <td>${requestScope.patient.pSex}</td>
            <td>${requestScope.patient.pTime}</td>
            <td>${requestScope.patient.pIllness}</td>
            <td>${requestScope.patient.mName}</td>
            <td>${requestScope.patient.dName}</td>
            <td>${requestScope.patient.bid}</td>
        </tr>
        </thead>
    </table>

</div>

</body>

</html>
