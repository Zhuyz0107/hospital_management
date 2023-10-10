

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
        <form action="UpdateInstrumentServlet">
            <input type="hidden" name="iId" value="${requestScope.instrument.iId}">
            <table>
                <tr>
                    <td>仪器名称</td>
                    <td>仪器价格</td>
                    <td>仪器数量</td>
                    <td>备注</td>
                    <td>仪器状态</td>
                    <td colspan="2">操作</td>
                </tr>
                <tr>
                    <td><input name="iName" type="text" value="${requestScope.instrument.iName}"/></td>
                    <td><input name="iPrice" type="text" value="${requestScope.instrument.iPrice}"/></td>
                    <td><input name="iNum" type="text" value="${requestScope.instrument.iNum}"/></td>
                    <td><input name="iRemark" type="text" value="${requestScope.instrument.iRemark}"/></td>
                    <td><input name="iState" type="text" value="${requestScope.instrument.iState}"/></td>
                    <td><input type="submit" value="提交"/></td>
                </tr>
            </table>
        </form>
    </div>
    </body>
    </html>