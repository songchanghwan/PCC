<%@page import="kr.korea.pcc.vo.GuestVO"%>
<%@page import="kr.korea.pcc.MybatisUtil"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
		
			
		GuestVO vo = sqlSession.selectOne("test.selectByIdx", 2); // ����ȯ�� �ʿ䰡 ����.
		
		out.println(vo.toString() +"<br>");
%>

</body>
</html>