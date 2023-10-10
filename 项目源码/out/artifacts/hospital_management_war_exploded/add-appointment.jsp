<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html lang="zh">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>添加预约</title>
    <!-- Iconic Fonts -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="x-admin/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="x-admin/css/flaticon.css">
    <link rel="stylesheet" href="x-admin/css/cryptocoins.css">
    <link rel="stylesheet" href="x-admin/css/cryptocoins-colors.css">
    <!-- Bootstrap core CSS -->
    <link href="x-admin/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery UI -->
    <link href="x-admin/css/jquery-ui.min.css" rel="stylesheet">
    <!-- Page Specific CSS (Slick Slider.css) -->
    <link href="x-admin/css/slick.css" rel="stylesheet">
    <!-- mednalytics styles -->
    <link href="x-admin/css/style.css" rel="stylesheet">
    <style>
        select{
            height: 20px;
            width: 100px;
            background-color: pink;
        }
    </style>

    <!--  &lt;!&ndash; Favicon &ndash;&gt;-->
    <!--  <link rel="icon" type="image/png" sizes="32x32" href="../../favicon.ico">-->
</head>

<body class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar">
<!-- Setting Panel -->
<div class="ms-toggler ms-settings-toggle ms-d-block-lg">
    <i class="flaticon-gear"></i>
</div>

<div id="preloader-wrap">
    <div class="spinner spinner-8">
        <div class="ms-circle1 ms-child"></div>
        <div class="ms-circle2 ms-child"></div>
        <div class="ms-circle3 ms-child"></div>
        <div class="ms-circle4 ms-child"></div>
        <div class="ms-circle5 ms-child"></div>
        <div class="ms-circle6 ms-child"></div>
        <div class="ms-circle7 ms-child"></div>
        <div class="ms-circle8 ms-child"></div>
        <div class="ms-circle9 ms-child"></div>
        <div class="ms-circle10 ms-child"></div>
        <div class="ms-circle11 ms-child"></div>
        <div class="ms-circle12 ms-child"></div>
    </div>
</div>
<!-- Overlays -->
<div class="ms-aside-overlay ms-overlay-left ms-toggler" data-target="#ms-side-nav" data-toggle="slideLeft"></div>
<div class="ms-aside-overlay ms-overlay-right ms-toggler" data-target="#ms-recent-activity"
     data-toggle="slideRight"></div>
<!-- Sidebar Navigation Left -->

<div class="col-xl-12 col-md-12">
    <div class="ms-panel">
        <div class="ms-panel-body">
            <form class="needs-validation" action="AddRegisterServlet"  method="get" novalidate>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="validationCustom001">姓名</label>
                        <div class="input-group">
                            <input name="name" type="text" class="form-control" id="validationCustom001" placeholder="输入名字"
                                   required>

                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="validationCustom005">年龄</label>
                        <div class="input-group">
                            <input name="age" type="text" class="form-control" id="validationCustom005" placeholder="输入年龄"
                                   required>

                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="validationCustom006">科室</label>
                        <div class="input-group">
                            <input name="department" type="text" class="form-control" id="validationCustom006" placeholder="输入科室名"
                                   required>

                        </div>
                    </div>
                </div>
                <%--                <script>--%>
                <%--                    function getoption() {--%>
                <%--                        var o=document.getElementById("validationCustom007");--%>
                <%--                        <c:forEach items="${requestScope.mediciners}" var="${mediciner}">--%>
                <%--                            o.option.add();--%>
                <%--                        </c:forEach>--%>
                <%--                    }--%>
                <%--                </script>--%>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <!--            <label>预约医生</label>-->
                        <!--            <div class="input-group">-->
                        <!--&lt;!&ndash;              <input type="text" class="form-control" id="validationCustom007" placeholder="输入医生姓名" required>&ndash;&gt;-->
                        <label>预约医生
                            <select name="doctor"  onchange="getoption()">
                                <option>张三</option>
                                <option>小李</option>
                                <option>王五</option>
                                <option>刘慧</option>
                            </select>
                        </label>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="validationCustom008">预约日期</label>
                    <div class="input-group">
                        <input name="date" type="date" class="form-control" id="validationCustom008" placeholder="输入预约日期" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-12 mb-2">
                        <label>备注（哪里不舒服）</label>
                        <div class="input-group">
                            <textarea name="problem" class="form-control" id="exampleTextarea" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label>性别</label>
                        <ul class="ms-list d-flex">
                            <li class="ms-list-item pl-0">
                                <label class="ms-checkbox-wrap">
                                    <input  type="radio" name="gender" value="女">
                                    <i class="ms-checkbox-check"></i>
                                </label>
                                <span> 男 </span>
                            </li>
                            <li class="ms-list-item">
                                <label class="ms-checkbox-wrap">
                                    <input type="radio" name="gender" value="男" checked="">
                                    <i class="ms-checkbox-check"></i>
                                </label>
                                <span> 女 </span>
                            </li>
                        </ul>
                    </div>
                </div>
                <script>
                    function success() {
                        alert("插入成功！")
                    }
                </script>
                <button class="btn btn-warning mt-4 d-inline w-20" type="reset">重置</button>
                <button class="btn btn-primary mt-4 d-inline w-20" type="submit" onclick="success()">提交</button>
            </form>
        </div>
    </div>
</div>

<!-- SCRIPTS -->
<!-- Global Required Scripts Start -->
<script src="x-admin/js/jquery-3.3.1.min.js"></script>
<script src="x-admin/js/popper.min.js"></script>
<script src="x-admin/js/bootstrap.min.js"></script>
<script src="x-admin/js/perfect-scrollbar.js"></script>
<script src="x-admin/js/jquery-ui.min.js"></script>
<!-- Global Required Scripts End -->
<!-- Page Specific Scripts Start -->
<script src="x-admin/js/slick.min.js"></script>
<script src="x-admin/js/moment.js"></script>
<script src="x-admin/js/jquery.webticker.min.js"></script>
<!-- Page Specific Scripts Finish -->

<!-- mednalytics core JavaScript -->
<script src="x-admin/js/framework.js"></script>
<!-- Settings -->
<script src="x-admin/js/settings.js"></script>
</body>
</html>
