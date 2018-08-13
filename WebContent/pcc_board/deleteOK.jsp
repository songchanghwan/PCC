<%@page import="kr.korea.pcc.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>

 <%
 	request.setCharacterEncoding("UTF-8");
 	String board_idx  = (String)session.getAttribute("board_idx");
 	String board_idx_incre = (String)session.getAttribute("board_idx_incre");
 
 %>
 	<jsp:useBean id="DeleteVo" class="kr.korea.pcc.vo.BoardVO"/>
 	<jsp:setProperty property="*" name="DeleteVo"/>
 	<jsp:setProperty property="board_idx" name="DeleteVo" value="${board_idx}"/>
 	<jsp:setProperty property="board_idx_incre" name="DeleteVo" value="${board_idx_incre}"/>
 	
 <%
 	BoardService.getInstance().delete(DeleteVo);
 	BoardService.getInstance().deleteIndex(board_idx, board_idx_incre);
	String board_name = (String)session.getAttribute("board_name");
	response.sendRedirect("/PCC/pcc_board/"+board_name);
 %>
 	
 	
 	
 	
 	