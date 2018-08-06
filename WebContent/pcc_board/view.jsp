<%@page import="kr.korea.pcc.vo.BoardVO"%>
<%@page import="kr.korea.pcc.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../include.jsp"%>
<%
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);
		
		BoardVO vo = BoardService.getInstance().selectByIdx(Integer.parseInt(request.getParameter("board_idx")),Integer.parseInt(request.getParameter("board_idx_incre")));
		request.setAttribute("vo", vo);
%>
<!doctype html>
<html lang="ko">
<head>
	<jsp:include page="HeadTag.jsp" />
	<style>
		table {
			margin: auto;
			padding: 20px;
			border: 1px solid black;
		}
	</style>

</head>
<body>
	<!-- 섹션(중간) 영역 -->
	<div id="section">
		<div class="article">
			<form action="../writeOk.jsp" method="post">
				<table>
					<tr>
						<td
							style="text-align: center; background-color: silver; color: gray; font-size: 15pt"
							colspan="2">글읽기
						</td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="subject" width="100" value="${vo.subject}" readonly="readonly"/></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="content" cols="100" rows="25" readonly="readonly">${vo.content}</textarea></td>
					</tr>
					<tr>
						<td style="text-align: right;" colspan="2">
							<input type="submit" value="수정하기"/>
							<input type="button" value="삭제하기"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="FooterTag.jsp" />
</body>

</html>