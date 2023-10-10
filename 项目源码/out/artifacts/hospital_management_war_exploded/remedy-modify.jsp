
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <title>编辑</title>
    <link rel="stylesheet" href="x-admin/css/student_add.css">
</head>
<body>
<div class="box">
    <form action="UpdateRemedyServlet">
        <input type="hidden" name="rId" value="${requestScope.remedy.rId}">
        <table>
            <tr>
                <td>药品名称</td>
                <td>药品价格</td>
                <td>药品数量</td>
                <td>备注</td>
                <td colspan="2">操作</td>
            </tr>
            <tr>
                <td><input name="rName" type="text" value="${requestScope.remedy.rName}"/></td>
                <td><input name="rPrice" type="text" value="${requestScope.remedy.rPrice}"/></td>
                <td><input name="rNum" type="text" value="${requestScope.remedy.rNum}"/></td>
                <td><input name="rRemark" type="text" value="${requestScope.remedy.rRemark}"/></td>
                <td><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>