<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-04-12
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    try{
        int a = 20, b = 0;
        int c = 0;

        c =  a/b;
    }
    catch (Exception e){
        out.println(e.toString());
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
