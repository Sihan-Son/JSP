<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-03
  Time: 오전 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String member_id = (String )session.getAttribute("member_id");

    if(member_id != null)
    {
        out.println("세션이 존재해 정상적으로 출력합니다");
        out.println("<BR>");
        out.println("<a href =\"session-exam-logout.jsp\">로그아웃");
    }
    else
    {
        out.println("<script type = \"text/javascript\">");
        out.println("alert('로그인이 필요합니다')");
        out.println("location.href=\"session-exam-login-form.jsp\"");
        out.println("</script>");
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
