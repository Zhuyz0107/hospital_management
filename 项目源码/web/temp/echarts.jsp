
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>可视化</title>
    <script src="../x-admin/js/echarts.min.js"></script>
    <style>
        #main{
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
        <a href="ListRemedyServlet" class="back">返回</a>
    </div>
</div>
<script>
    var chartDom = document.getElementById('main');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
        xAxis: {
            type: 'category',
            data: [
                <c:forEach items="${rNum}"  var="remedies">
                '${remedies.rName}',
                </c:forEach>
            ]
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                data: [
                    <c:forEach items="${rNum}"  var="remedies">
                    '${remedies.rNum}',
                    </c:forEach>
                ],
                type:'bar'
            }
        ]
    };

    option && myChart.setOption(option);



</script>
</body>
</html>
