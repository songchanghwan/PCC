<%@page import="kr.korea.pcc.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="UpdateVo" class="kr.korea.pcc.vo.BoardVO" />
<jsp:setProperty property="*" name="UpdateVo" />
<jsp:setProperty property="board_idx" name="UpdateVo"
	value="${board_idx}" />
<jsp:setProperty property="board_idx_incre" name="UpdateVo"
	value="${board_idx_incre}" />

<%
		BoardService.getInstance().update(UpdateVo);
		String board_name = (String) session.getAttribute("board_name");
		response.sendRedirect("/PCC/pcc_board/" + board_name);
%>




