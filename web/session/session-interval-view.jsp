<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-03
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    out.println("id" + session.getAttribute("id") +"<br>");
    out.println("name " +  session.getAttribute("name") +"<br>");
    out.println("세션의 지속시간 :  " +session.getMaxInactiveInterval());
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
