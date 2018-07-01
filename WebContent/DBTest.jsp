<%@page import="kr.pcc.JdbcUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Connection conn = null;
	conn = JdbcUtil.getConnection();
	
	out.println("연결성공1" + conn + "<br>");
	
	JdbcUtil.close(conn); // 반환

%>

</body>
</html>