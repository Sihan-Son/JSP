<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-01
  Time: 오후 3:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie[] cookies = request.getCookies();

    Boolean access_ok = false;

    if((cookies!=null)&&(cookies.length>0))
    {
        for (int i= 0; i<cookies.length; i++){
            if(cookies[i].getName().equals("member_ok")){
                access_ok = true;
            }
        }
    }

    if(access_ok)
    {
        out.println("마이페이지 내용입니다<br>");
        out.println("<a href =\"cookie-exam-logout.jsp\">로그아웃</a>");
    }
    else{
        out.println("로그인이 필요합니다");
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
