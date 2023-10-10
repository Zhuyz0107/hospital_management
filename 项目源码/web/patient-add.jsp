<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 赵程
  Date: 2023/1/7
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加患者</title>
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
<%--    <button class="layui-btn" ><i class="layui-icon"></i>查询医生所有名称</button>--%>
    <form class="layui-form" action="AddPatientServlet">
        <table>
            <tr>
                <div class="layui-form-item">
                    <label  class="layui-form-label">
                        <span class="x-red">*</span>患者ID
                    </label>
                    <div class="layui-input-inline">
                        <input name="pid" type="text"   required=""
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>必填项
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>患者姓名
                    </label>
                    <div class="layui-input-inline">
                        <input name="pName" type="text"  required=""
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>必填项
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>患者性别
                    </label>
                    <div class="layui-input-inline">
                        <select name="pSex" lay-verify="required" lay-search="" id="pSex">
                            <option name="mName">请选择性别</option>
                            <option name="pSex">男</option>
                            <option name="pSex">女</option>
                        </select>
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>必选项
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>患者入院时间
                    </label>
                    <div class="layui-input-inline">
<%--                        <input name="pTime" type="text"  required=""--%>
<%--                               autocomplete="off" class="layui-input">--%>

<%--                        下面是一种使用下拉表选择时间方式但是有些问题先注释掉，后期有时间再做--%>

                            <input  type="datetime-local" class="layui-input"  name="pTime" >
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>必填项
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>诊断疾病
                    </label>
                    <div class="layui-input-inline">
                        <input name="pIllness" type="text"  required=""
                               autocomplete="off" class="layui-input">
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
                            <option name="mName">请选择主治医生</option>
                            <c:forEach items="${requestScope.patientsss}" var="patientsss">
                                <option name="mName">${patientsss.mName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>必选项
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red"></span>床位号
                    </label>
                    <div class="layui-input-inline">
                        <input name="bid" type="text"   class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label  class="layui-form-label">
                    </label>
                    <button  class="layui-btn" type="submit" onclick="tankuang()">
                        增加
                    </button>
                </div>
            </tr>
        </table>
    </form>
</div>
<script>
    function tankuang(){
        layer.alert("添加成功", {icon: 6});
    }
</script>
</body>

</html>

