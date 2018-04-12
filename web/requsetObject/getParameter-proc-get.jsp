<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	String nation = request.getParameter("nation");
	float score = Float.parseFloat(request.getParameter("score"));
	
	out.println("번호는" + num +" 입니다\n" );
	out.println("이름은" + name + "입니다\n" );
	out.println("이름은" + nation + "입니다\n" );
	out.println("평점은" + score + "입니다\n");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>