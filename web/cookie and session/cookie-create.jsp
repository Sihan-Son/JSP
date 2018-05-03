<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-01
  Time: 오후 3:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import =" java.net.URLEncoder" %>
<%@ page import =" java.net.URLDecoder" %>

<%
    Cookie my = new Cookie("id","hong");
    response.addCookie(my);

    Cookie my2 = new Cookie("name",URLEncoder.encode("홍길동","euc-kr"));
    response.addCookie(my2);
%>

cookie1의 이름 : <%=my.getName() %><br>
cookie1의 값 : <%=my.getValue()%><br><br><br><hr>

cookie2의 이름 : <%=my2.getName() %><br>
cookie2의 값 : <%=URLDecoder.decode(my2.getValue(),"euc-kr")%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
