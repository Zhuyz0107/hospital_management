<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>可视化</title>
    <script src="x-admin/js/echarts.min.js"></script>
    <style>
        #main {
            width: 580px;
            height: 580px;
            border-style: dashed;
        }


    </style>
</head>
<body>

<div id="main"></div>
<div class="x-body">
    <div class="layui-row">
        <a href="ListServlet1" class="back">返回</a>
    </div>

    <script>
        var chartDom = document.getElementById('main');
        var myChart = echarts.init(chartDom);
        var option;

        option = {
            xAxis: {
                type: 'category',
                data: [
                    <c:forEach items="${iNum}"  var="instruments">
                    '${instruments.iName}',
                    </c:forEach>
                ]
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    data: [
                        <c:forEach items="${iNum}"  var="instruments">
                        '${instruments.iNum}',
                        </c:forEach>
                    ],
                    type: 'bar'
                }
            ]
        };

        option && myChart.setOption(option);


    </script>
</div>
</body>
</html>
