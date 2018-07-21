<%@page import="kr.korea.pcc.vo.GuestVO"%>
<%@page import="kr.korea.pcc.MybatisUtil"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
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
		SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
		
		GuestVO vo = sqlSession.selectOne("Board.selectByIdx", 2); // 형변환할 필요가 없다.
		
		out.println(vo.toString() +"<br>");
%>
</body>
</html>