<%@page import="kr.korea.pcc.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");
	String DBUser = BoardService.getInstance().selectByUser((String) session.getAttribute("board_idx"),
			(String) session.getAttribute("board_idx_incre"));
	String referer = request.getHeader("referer");

	System.out.println("세션 아이디 값 : " + session.getAttribute("id") + "DB 아이디 값" + DBUser);

	if (session.getAttribute("id").equals(DBUser)) {
		response.sendRedirect("/PCC/pcc_board/deleteOK.jsp");
		return;
	} else {
		out.println("<script>");
		out.println("alert('본인이 아닙니다.(삭제불가)');history.back();");
		out.println("</script>");
	}
%>