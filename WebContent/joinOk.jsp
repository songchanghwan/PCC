<%@page import="kr.korea.pcc.SecurityUtil"%>
<%@page import="java.util.Date"%>
<%@page import="kr.korea.pcc.service.JoinService"%>
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
		request.setCharacterEncoding("UTF-8");
		SecurityUtil su = new SecurityUtil();
		String password = request.getParameter("password");
		
		if(request.getMethod().equals("POST")) {
	%>
	<jsp:useBean id="JoinVO" class="kr.korea.pcc.vo.JoinVO" scope="request"/>
	
	<jsp:setProperty property="*" name="JoinVO"/>
	<jsp:setProperty property="password" name="JoinVO" value="<%=su.encryptSHA256(password) %>"/>
	
	<% 
		JoinService.getInstance().insert(JoinVO);
		response.sendRedirect("Login.jsp");
		} 
	%>
	
</body>
</html>