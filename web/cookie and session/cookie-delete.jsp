<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-01
  Time: 오후 3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.net.URLEncoder" %>

<%
    Cookie[] cookies = request.getCookies();

    if((cookies!=null)&&(cookies.length>0)){
        for(int i = 0; i<cookies.length;i++){
            cookies[i].setMaxAge(0);
            response.addCookie(cookies[i]);
        }
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
