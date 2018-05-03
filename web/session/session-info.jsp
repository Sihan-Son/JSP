<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-03
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>

<%
    if(session.isNew()) {
        out.println("새로 생성된 세션입니다<hr>");
    }
    else
    {
        out.println("이미 생성된 세션입니다<hr>");
    }

    Date time = new Date();
    SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    out.println("세션 ID : " + session.getId() +"<br>");

    time.setTime(session.getCreationTime());
    out.println("Session creat Time : " + formater.format(time) +"<br>");

    time.setTime(session.getLastAccessedTime());
    out.println("Session last acess Time : " + formater.format(time));
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
