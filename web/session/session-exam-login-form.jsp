<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-01
  Time: 오후 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="login" method="post" action="session-exam-login-proc.jsp">

    <table align="center" width="300" cellpadding="5" cellspacing="0" >
        <tr>
            <td align="center" width="300">아이디</td>
            <td width="180"><input type="text" name="userId" size="15"></td>
        </tr>
        <tr>
            <td align="center" width="300">패스워드</td>
            <td width="180"><input type="text" name="userPw" size="15"></td>
        </tr>
    </table>

    <table align="center" width="300" cellpadding="5" cellspacing="0" >
        <tr>
            <td align="center">
                <input type="submit" value="LOGIN">&nbsp;&nbsp;
                <input type="button" value="CANCEL">
            </td>
        </tr>
    </table>

</form>


</body>
</html>
