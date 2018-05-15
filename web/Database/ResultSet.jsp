<%--
  Created by IntelliJ IDEA.
  User: sihan
  Date: 2018-05-15
  Time: 오후 3:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>

<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String jdbcUrl = "jdbc:mysql://localhost:3306/testdb";
        String jdbcId = "jspuser";
        String jdbcPw = "jsppass";

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPw);

        String Query = "select name, email from userinfo where count >= 300;";
        pstmt = conn.prepareStatement(Query);
        rs = pstmt.executeQuery();

        while (rs.next()) {
            String my_name = rs.getString(1);
            //String my_id = rs.getString("id");
            String my_email = rs.getString("email");
//            String my_part = rs.getString("part");
//            int my_count = rs.getInt("count");
//            int my_level = rs.getInt("level");

//            out.println(my_name + " " + my_id+" " + my_email+" " + " " + my_part +" " +my_level);
            out.println(my_name + ": " + my_email);
            out.println("<br>");
        }

    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        rs.close();
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
