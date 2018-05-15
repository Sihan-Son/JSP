<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-01
  Time: 오후 3:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
   String member_id = (String)session.getAttribute("member_id");

   if(member_id != null)
   {
       session.invalidate();

       out.println("<script type = \"text/javascript\">");
       out.println("alert('로그아웃 되었습니다')");
       out.println("location.href=\"session-exam-login-form.jsp\"");
       out.println("</script>");
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
