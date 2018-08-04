<%@page import="kr.korea.pcc.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>

 <%
 	request.setCharacterEncoding("UTF-8");
 	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
 	String board_idx = request.getParameter("board_idx"); 	
 %>
 	<jsp:useBean id="insertVo" class="kr.korea.pcc.vo.BoardVO"/>
 	<jsp:setProperty property="*" name="insertVo"/>
 	<jsp:setProperty property="user" name ="insertVo" value="${sessionScope.id}"/>
 	
 <%
 	int PreBoard_idx = BoardService.getInstance().PreBoardIdx(board_idx);
 	BoardService.getInstance().insert(insertVo, PreBoard_idx);
 	String board_name = (String)session.getAttribute("board_name");
 	response.sendRedirect("/PCC/pcc_board/"+board_name);
 %>
 	
 	