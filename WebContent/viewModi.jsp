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

	if (session.getAttribute("id").equals(DBUser)) {
		response.sendRedirect("/PCC/pcc_board/modify.jsp");
		return;
	} else {
		out.println("<script>");
		out.println("alert('본인이 아닙니다.(수정불가)');history.back();");
		out.println("</script>");
	}
%>