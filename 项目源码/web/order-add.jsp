
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>医生添加</title>
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
        <form action="AddMedicinerServlet" class="layui-form">
          <div class="layui-form-item">
              <label class="layui-form-label">
                  <span class="x-red">*</span>医生编号
              </label>
              <div class="layui-input-inline">
                  <input type="text"  name="mid" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label class="layui-form-label">
                  <span class="x-red">*</span>医生姓名
              </label>
              <div class="layui-input-inline">
                  <input type="text"  name="mName" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>医生性别
              </label>
              <div class="layui-input-inline">
                  <select name="mSex">
                      <option>男</option>
                      <option>女</option>
                  </select>
              </div>
          </div>
          <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>所属科室
              </label>
              <div class="layui-input-inline">
                  <select name="dName" lay-verify="required" lay-search="" id="dName">
                      <option name="dName">请选择科室名称</option>
                      <c:forEach items="${requestScope.medicinerss}" var="medicinerss">
                          <option name="dName">${medicinerss.dName}</option>
                      </c:forEach>
                  </select>
              </div>
          </div>
          <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>医生职位
              </label>
              <div class="layui-input-inline">
                  <select  name="mStatus" class="valid">
                    <option value="主任">主任</option>
                    <option value="副主任">副主任</option>
                      <option value="主治医生">主治医生</option>
                  </select>
              </div>
          </div>
          <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>医生年龄
              </label>
              <div class="layui-input-inline">
                  <input type="text"  name="mAge" required="" lay-verify="required"
                         autocomplete="off" class="layui-input">
              </div>

          </div>
          <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>联系方式
              </label>
              <div class="layui-input-inline">
                  <input type="text"  name="mPhone" required="" lay-verify="email"
                  autocomplete="off" class="layui-input">
              </div>
          </div>


              <td><input type="submit" class="back" value="增加"/></td>
          <%--    <button  class="layui-btn" lay-filter="add" lay-submit="">
                  增加
              </button>--%>
          </div>
      </form>
    </div>
   <%-- <script>
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
          var form = layui.form
          ,layer = layui.layer;
        
          //自定义验证规则
          form.verify({
            nikename: function(value){
              if(value.length < 5){
                return '昵称至少得5个字符啊';
              }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#L_pass').val()!=$('#L_repass').val()){
                    return '两次密码不一致';
                }
            }
          });

          //监听提交
          form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
          });
          
          
        });
    </script>--%>
    
  </body>

</html>