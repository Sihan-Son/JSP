<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	out.println("<h2>프로토콜과 URL 관련 정보</h2><hr>");
%>

1. 클라이언트 IP 주소 <%=request.getRemoteAddr() %><br>
2. 요청 메소드 <%= request.getMethod() %><br>
3. 프로토콜 <%= request.getProtocol() %><br>
4. 서브 호스트 이름 <%= request.getServerName() %><br>
5. 서버 포트 <%= request.getServerPort() %><br>
6. 요청 URI <%= request.getRequestURI() %><br>
7. 요청 URL <%= request.getRequestURL() %><br>
8. 요청 쿼리 <%= request.getQueryString() %><br>
9. 컨텍스 패스		 <%= request.getContextPath() %><br>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>