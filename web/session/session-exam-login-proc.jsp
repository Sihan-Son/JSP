<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-01
  Time: 오후 3:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("euc-kr");

    String id = "korea";
    String pw  = "koreapass";

    String user_id = request.getParameter("userId");
    String user_pw = request.getParameter("userPw");

    if((id.equals(user_id))&&(pw.equals(user_pw)))
    {

        session.setAttribute("member_id",user_id);
        //Cookie cookie = new Cookie("member_ok",user_id);
        //response.addCookie(cookie);

        out.println("<B>" + user_id + "</B>님의 방문을 환영합니다<hr>");
        out.println("<a href =\"session-exam-check.jsp\">마이페이지</a>");
        out.println("<br>");
        out.println("<a href =\"session-exam-logout.jsp\">로그아웃</a>");
    }
    else
    {
        out.println(" <script type =\"text/javascript\"> ");
        out.println("alert('아이디나 패스워드가 다릅니다');");
        out.println("history.back();");
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
