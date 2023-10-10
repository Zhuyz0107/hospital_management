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
    <div class="x-nav">
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="ListServlet" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="FindBedInfoServlet" method="post">
          <input type="text" name="bid"  placeholder="请输入床位ID" autocomplete="off" class="layui-input">
          <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
      <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加用户','./bed-add.jsp',600,400)"><i class="layui-icon"></i>添加床位</button>
        <span class="x-right" style="line-height:40px">共有数据：88 条</span>
      </xblock>
      <table class="layui-table">
        <thead>
          <tr>
            <th>床位号</th>
            <th>床位状态</th>
            <th>患者姓名</th>
            <th>患者性别</th>
            <th>入院时间</th>
            <th>患者所属科室</th>
            <th>诊断结果</th>
            <th>主治医生</th>
            <th>操作</th>
          </tr>
          <c:forEach items="${requestScope.beds}" var="beds">
            <tr class="input">
              <td>${beds.bid}</td>
              <td>${beds.bedState}</td>
              <td>${beds.pName}</td>
              <td>${beds.pSex}</td>
              <td>${beds.pTime}</td>
              <td>${beds.dName}</td>
              <td>${beds.pIllness}</td>
              <td>${beds.mName}</td>
              <td>
              <a title="编辑" onclick="x_admin_show('编辑','GetBedServlet?bid=${beds.bid}',600,400)" href="javascript:;">
                <i class="layui-icon"></i>
              </a>
              </td>
<%--              <td class="last"><a href="GetBedServlet?bid=${beds.bid}" class="submit">修改</a></td>--%>
            </tr>

          </c:forEach>
        </thead>
      </table>

    </div>
    
  </body>

</html>