<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  
  <head>
    <!DOCTYPE html>
    <meta charset="UTF-8">
    <title>医生列表</title>
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
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form action="FindMedicinerByNameServlet" method="post" class="layui-form layui-col-md12 x-so">
          <input class="layui-input" placeholder="开始日" name="start" id="start">
          <input class="layui-input" placeholder="截止日" name="end" id="end">
          <%--<input type="text" name="mid" value="(请输入医生的编号)" class="layui-input">
          <input type="submit" value="查找医生" class="submit"><br/>--%>

           <input type="text" name="mid"  placeholder="请输入医生编号" autocomplete="off" class="layui-input">
           <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>

        </form>
      </div>
      <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加医生','FindDepNameServlet')"><i class="layui-icon"></i>添加</button>

        <span class="x-right" style="line-height:40px"><a  href="MedicinerAgeServlet" class="add">医生医龄统计表</a></span><hr/>
      </xblock>
      <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>医生编号</th>
            <th>医生姓名</th>
            <th>医生性别</th>
            <th>所属科室</th>
            <th>医生职位</th>
            <th>医生年龄</th>
            <th>联系方式</th>
            <th colspan="2">操作</th>
            </tr>
        </thead>
        <c:forEach items="${requestScope.mediciners}" var="mediciners">
          <tr>
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>${mediciners.mid}</td>
            <td>${mediciners.mName}</td>
            <td>${mediciners.mSex}</td>
            <td>${mediciners.dName}</td>
            <td>${mediciners.mStatus}</td>
            <td>${mediciners.mAge}</td>
            <td>${mediciners.mPhone}</td>

            <td class="td-manage">
              <a  href="FindDepNameServlet1?mid=${mediciners.mid}"  class="submit">
                <i class="layui-icon">&#xe63c;</i>
                <%--<button type="button" class="back" >修改</button>--%>
              </a>
              <td class="deleteClass">
              <a  href="delMedicinerServlet?mid=${mediciners.mid}" class="">
                <i class="layui-icon">&#xe640;</i>
              </a>
            </td>
          </tr>
        </c:forEach>
        <%--</tbody>--%>
      </table>
      <div class="page">
        <div>
          <a class="prev" href=""><&lt;</a>
          <a class="num" href="">1</a>
          <span class="current">2</span>
          <a class="num" href="">3</a>
          <a class="num" href="">489</a>
          <a class="next" href="">&gt;&gt;</a>
        </div>
      </div>

    </div>
    <script>
      layui.use('laydate', function(){
        var laydate = layui.laydate;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });

       /*用户-停用*/
   /*   function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }
*/
      /*用户-删除*/
      $(function () {
        $(".deleteClass").click(function () {
          return confirm("确定要删除改用户嘛？");
          /*【" + $(this).parent().parent().find("td:first").next().text() + "】*/
        });
      });
      /*function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }*/



      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>

  </body>

</html>