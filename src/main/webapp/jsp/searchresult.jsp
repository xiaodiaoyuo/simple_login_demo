<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <link href="../css/addoredit.css" rel="stylesheet">
        <link type="text/css" href="../css/jquery.datetimepicker.css" rel="stylesheet" />
    </head>
<body >
<div class="addoredit">
    <form  id="form" onsubmit="return check();">
        <table>
            <tr><td><input type="hidden" name="id" value = "${user.id}"/></td></tr>
            <tr>
                <td><label>用户名: </label><input type="text" class="user" name="username" placeholder="用户名" value = "${user.username}"/></td>
            </tr>
        </table>

        <div class="t-box dp-n">
            <img src="../images/error.png" alt="" class="t-img">
            <p class="t-color"></p>
        </div>
        <c:choose>
            <c:when test="${retcode eq '1'}">
                <div class="t-box">
                    <img src="../images/error.png" alt="" class="t-img">
                    <p class="t-color1">${message}</p>
                </div>
            </c:when>
        </c:choose>

        <input type="submit" class="btn btn-primary btn-block btn-large" value="查询" />
        <%--<input type="reset" class=" btn btn-primary btn-block btn-large" value="取消" />--%>
    </form>

</div>
<!-- 引入公共js文件 -->
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
<script type ="text/javascript" src="../js/jquery.datetimepicker.js"></script>
<script>

    /**
     * 表单提交
     */
    function check() {
        var user = $(".user").val();
        if (user == "") {
            $(".t-box").removeClass("dp-n");
            $(".t-color").html("用户名不能为空！");
            return false;
        }

    });
</script>
</body>

</html>