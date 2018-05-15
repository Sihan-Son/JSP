<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-15
  Time: 오후 2:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%
    Connection conn = null;
    Statement dbstmt = null;

    try{
        Class.forName("com.mysql.jdbc.Driver");

        String jdbcUrl = "jdbc:mysql://localhost:3306/testdb";
        String jdbcId = "jspuser";
        String jdbcPw = "jsppass";

        conn = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPw);

        dbstmt = conn.createStatement();
        String Query = "UPDATE userinfo SET level = level+1 WHERE level = 0";
        int row = dbstmt.executeUpdate(Query);
        out.println(row + "개의 레코드가 변경 되었습니다");
    }catch (SQLException e){
        e.printStackTrace();
    }finally {
        dbstmt.close();
        conn.close();
    }

%>

<html>
<head>
    <title>SQLTest</title>
</head>
<body>

</body>
</html>
