<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>医生修改</title>
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
    <form action="UpdateMedicinerServlet" class="layui-form">
        <%--<div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>医生编号
            </label>
            <td><input name="mid" type="text" value="${requestScope.mediciner.mid}"/></td>
            &lt;%&ndash;<div class="layui-input-inline">
                <input type="text"  name="mid" required="" lay-verify="required"
                       value="${requestScope.mediciner.mid}"
                       autocomplete="off" class="layui-input">
            </div>&ndash;%&gt;
        </div>--%>
        <input type="hidden" name="mid" value="${requestScope.mediciner.mid}">
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
                <select name="mSex">
                    <option value="${requestScope.mediciner.mSex}">${requestScope.mediciner.mSex}</option>
                    <option>男</option>
                    <option>女</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>所属科室
            </label>
            <div class="layui-input-inline">
                <select name="dName" lay-verify="required" lay-search="" id="dName">
                    <option name="dName">请选择科室名称</option>
                    <c:forEach items="${requestScope.medicinersss}" var="medicinersss">
                        <option name="dName">${medicinersss.dName}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>医生职位
            </label>

            <div class="layui-input-inline">
                <select name="mStatus" class="valid">
                    <option value="${requestScope.mediciner.mStatus}">${requestScope.mediciner.mStatus}</option>
                    <option value="主任">主任</option>
                    <option value="副主任">副主任</option>
                    <option value="主治医生">主治医生</option>
                </select>
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


        <td><input type="submit" class="back" value="提交"/></td>
        <%--    <button  class="layui-btn" lay-filter="add" lay-submit="">
                增加
            </button>--%>
    </form>
</div>
</body>
</html>