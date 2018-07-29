<%@page import="org.apache.log4j.LogManager"%>
<%@page import="org.apache.log4j.Logger"%>
<%@page import="kr.korea.pcc.SecurityUtil"%>
<%@page import="kr.korea.pcc.vo.JoinVO"%>
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
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		if(request.getMethod().equals("POST")) {
	%>
	
	<% 
		JoinVO joinvo = JoinService.getInstance().login(id);
		String NOW_password = su.encryptSHA256(password);
		
//		System.out.println("NOW_password :" +NOW_password); 넘겨진 비밀번호
//		System.out.println("DB_password :" +joinvo.getPassword()); // VO의 비밀번호

		if(joinvo != null && NOW_password.equals(joinvo.getPassword())) {
			out.println("<script>");
			out.println("alert('로그인 성공');");
			session.setAttribute("id", id);
			session.setAttribute("nicname", joinvo.getNicname());
			out.println("location.href = 'pcc_board/Main.jsp';");
			out.println("</script>");
			
		}
	
		out.println("<script>");
		out.println("alert('로그인 실패');");
		out.println("location.href = 'Login.jsp';");
		out.println("</script>");
		} 
	%>

</body>
</html>