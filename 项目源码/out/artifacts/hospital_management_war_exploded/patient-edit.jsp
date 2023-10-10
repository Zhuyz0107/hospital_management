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
    <title>患者信息编辑</title>
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
    <form class="layui-form" action="UpdatePatientServlet">
        <input type="hidden" name="pid" class="layui-input" value="${requestScope.patient.pid}">
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>患者姓名
            </label>
            <div class="layui-input-inline">
                <input name="pName" type="text" class="layui-input" value="${requestScope.patient.pName}"/>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>必填项
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>患者性别
            </label>
            <div class="layui-input-inline">
                <select name="pSex" lay-verify="required" lay-search="" id="pSex">
                    <option name="pSex" value="${requestScope.patient.pSex}">${requestScope.patient.pSex}</option>
                    <option name="pSex">男</option>
                    <option name="pSex">女</option>
                </select>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>必填项
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>患者入院时间
            </label>
            <div class="layui-input-inline">
<%--                <input name="pTime" type="text" class="layui-input" value="${requestScope.patient.pTime}"/>--%>
                <input  type="datetime-local" class="layui-input"  name="pTime" >
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>必填项
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>诊断结果
            </label>
            <div class="layui-input-inline">
                <input name="pIllness" type="text" class="layui-input" value="${requestScope.patient.pIllness}"/>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>必填项
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>主治医生
            </label>
            <div class="layui-input-inline">
                <select name="mName" lay-verify="required" lay-search="" id="mName">
                    <option name="mName" >${requestScope.patient.mName}</option>
                    <c:forEach items="${requestScope.patientss}" var="patientss">
                        <option name="mName">${patientss.mName}</option>
                    </c:forEach>
                </select>
<%--    <input name="bid" type="text" class="layui-input" value="${requestScope.patient.mName}"/>--%>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>必选项
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red"></span>床位号
            </label>
            <div class="layui-input-inline">
                <input name="bid" type="text" class="layui-input" value="${requestScope.patient.bid}"/>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red"></span>
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
