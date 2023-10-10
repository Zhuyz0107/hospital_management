<%--
  Created by IntelliJ IDEA.
  User: 祝延章
  Date: 2023/1/9
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>可视化</title>
    <script src="x-admin/js/echarts.min.js"></script>
    <style>
        #main {
            width: 500px;
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
                    <c:forEach items="${requestScope.mAge}" var="mediciner">
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
                        <c:forEach items="${requestScope.mAge}" var="mediciner">
                        '${mediciner.mAge}',
                        </c:forEach>
                    ],
                    type: 'line'
                }
            ]
        };

        option && myChart.setOption(option);

    </script>

</div>
</body>
</html>
