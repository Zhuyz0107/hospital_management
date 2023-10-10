<%--
  Created by IntelliJ IDEA.
  User: 赵程
  Date: 2023/1/8
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>床位信息修改</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="x-body">
    <form class="layui-form" action="UpdateBedServlet">
        <input type="hidden" name="bid" value="${requestScope.bed.bid}">
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>病人id
            </label>
            <div class="layui-input-inline">
                <input name="pid" type="text" class="layui-input" value="${requestScope.bed.pid}"/>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>必填项
            </div>
        </div>
        <tr>
            <div class="layui-form-item">
                <label  class="layui-form-label">
                </label>
                <button  class="layui-btn" type="submit" onclick="tankuang()">
                    修改
                </button>
            </div>
        </tr>
    </form>
</div>
<script>
    function tankuang(){
        layer.alert("修改成功", {icon: 6});
    }
</script>
</body>

</html>
