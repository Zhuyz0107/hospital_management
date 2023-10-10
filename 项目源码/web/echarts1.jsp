<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医龄可视化</title>
    <script src="js/echarts.min.js"></script>
    <style>
        #main{
            width:500px;
            height: 500px;
            float: left;
            border-style: dashed;
        }
    </style>
</head>
<body>
<div id="main">
    <script>
        var chartDom = document.getElementById('main');
        var myChart = echarts.init(chartDom);
        var option;

        option = {
            xAxis: {
                type: 'category',
                data: [
                    <c:forEach items="${mAge}" var="mediciner">
                    '${mediciner.mName}',
                    </c:forEach>
                ]
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    data: [
                        <c:forEach items="${mAge}" var="mediciner">
                        '${mediciner.mAge}',
                        </c:forEach>
                    ],
                    type: 'bar'
                }
            ]
        };

        option && myChart.setOption(option);

    </script>
</div>


<a href="ListServlet" class="submit">
    <button type="button" class="submit" style="background-color:  #009688"> 返回</button>
</a>
<%--    <button  class="layui-btn" lay-filter="add" lay-submit="">
        增加
    </button>--%>


</body>
</html>
