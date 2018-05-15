<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-15
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>


<%
    Connection conn = null;
    PreparedStatement pstmt = null;

    try{
        Class.forName("com.mysql.jdbc.Driver");
        String jdbcUrl = "jdbc:mysql://localhost:3306/testdb";
        String jdbcId = "jspuser";
        String jdbcPw = "jsppass";

        conn = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPw);

        String Query = "insert into userinfo values(?,?,?,?,?,?)";
        pstmt = conn.prepareStatement(Query);

        pstmt.setString(1,"강감찬");
        pstmt.setString(2,"gckang");
        pstmt.setString(3, "gckang@abc.com");
        pstmt.setString(4,"영업부");
        pstmt.setInt(5,350);
        pstmt.setInt(6,1);

        pstmt.executeUpdate();
    } catch (SQLException e){
        e.printStackTrace();
    }finally {
        pstmt.close();
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
