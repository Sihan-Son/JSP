<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-01
  Time: 오후 3:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie[] cookies = request.getCookies();

    Boolean access_ok=false;

    if((cookies!=null)&&(cookies.length>0))
    {
        for(int i = 0; i<cookies.length; i++)
        {
            if((cookies[i].getName().equals("member_ok")))
            {
                access_ok=true;
            }
        }
    }

    if(access_ok)
    {
        for(int i = 0; i<cookies.length; i++)
        {
            cookies[i].setMaxAge(0);
            response.addCookie(cookies[i]);
        }

        out.println(" <script type =\"text/javascript\"> ");
        out.println("alert('로그아웃 되었습니다');");
        out.println("location.href =\"cookie-exam-login-form.jsp\"");
        out.println("</script>");

    }
    else {
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
