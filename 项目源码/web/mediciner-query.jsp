<%--
  Created by IntelliJ IDEA.
  User: 祝延章
  Date: 2023/1/9
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>医生查询</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
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
    <form class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>医生编号
            </label>
            <div class="layui-input-inline">
                <input type="text" name="mid" required="" lay-verify="required"
                       value="${requestScope.mediciner.mid}"
                       autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>医生姓名
            </label>

            <%--<td><input name="mName" type="text" value="${requestScope.mediciner.mName}"/></td>--%>

            <div class="layui-input-inline">
                <input type="text" name="mName" required="" lay-verify="required"
                       value="${requestScope.mediciner.mName}"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>医生性别
            </label>

            <div class="layui-input-inline">
                <input type="text" name="mSex" required="" lay-verify="required"
                       value="${requestScope.mediciner.mSex}"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>所属科室
            </label>

            <div class="layui-input-inline">
                <input type="text" name="dName" required="" lay-verify="required"
                       value="${requestScope.mediciner.dName}"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>医生职位
            </label>

            <div class="layui-input-inline">
                <input type="text" name="mStatus" required="" lay-verify="required"
                       value="${requestScope.mediciner.mStatus}"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>医生年龄
            </label>

            <div class="layui-input-inline">
                <input type="text" name="mAge" required="" lay-verify="required"
                       value="${requestScope.mediciner.mAge}"
                       autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>联系方式
            </label>
            <div class="layui-input-inline">
                <input type="text" name="mPhone" required="" lay-verify="email"
                       value="${requestScope.mediciner.mPhone}"
                       autocomplete="off" class="layui-input">
            </div>
        </div>

        <a href="ListMedicineServlet" class="back">返回</a>
        <%--    <button  class="layui-btn" lay-filter="add" lay-submit="">
                增加
            </button>--%>
</div>


</body>

</html>
