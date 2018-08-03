<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("id")!=null && session.getAttribute("nicname")!=null) {
		session.removeAttribute("id");
		session.removeAttribute("nicname");
		response.sendRedirect("pcc_board/Main.jsp");
	}
%>