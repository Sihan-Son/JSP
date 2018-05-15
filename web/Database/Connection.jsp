<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-10
  Time: 오전 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<%
    Connection conn = null;

    try{
        Class.forName("com.mysql.jdbc.Driver");

        String jdbcUrl = "jdbc:mysql://localhost:3306/testdb";
        String jdbcId = "jspuser";
        String jdbcPw = "jsppass";

        conn = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPw);

        out.println("데이터베이스 접속 성공");
    }
    catch(SQLException e)
    {
        out.println("데이터 베이스 접속 실패");
        //e.printStackTrace();
    }

    finally{
        conn.close();
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
