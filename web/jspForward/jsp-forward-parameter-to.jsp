<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-04-17
  Time: 오후 4:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String parm1 = request.getParameter("korea");
    String parm2 = request.getParameter("japan");

    out.println("korea : " + parm1 +"<br>");
    out.println("japan : " + parm2);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
