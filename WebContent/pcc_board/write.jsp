<%@page import="kr.korea.pcc.service.BoardService"%>
<%@page import="kr.korea.pcc.vo.BoardVO"%>
<%@page import="kr.korea.pcc.vo.pagingVo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro|Abril+Fatface|Poor+Story" rel="stylesheet">
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include.jsp"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="HeadTag.jsp" />
<style>
table {
	margin: auto;
	padding: 20px;
	border: 2px solid black;
}
</style>
<%
	String board_idx = request.getParameter("board_idx");
%>
</head>

<body>

	<!-- 섹션(중간) 영역 -->
	<div id="section">
		<div class="article">
			<form action="../writeOk.jsp" method="post">
				<table style="border-collapse:separate; border-spacing:0 20px;">
					<tr>
						<td
							style="text-align: center; font-size: 17pt; padding:10px; border-radius:30px; box-shadow:0px 0px 15px coral; font-family:'Poor Story', cursive; font-weight:700; letter-spacing:5px;" 
							colspan="2" >글쓰기
							<input type="hidden" name ="board_idx" value = <%=board_idx%> /></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="subject" width="100" /></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="content" cols="100" rows="25"></textarea></td>
					</tr>
					<tr>
						<td style="text-align: right;" colspan="2"><input style="padding:7px;" type="submit" value="글쓰기"/></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="FooterTag.jsp" />
</body>
</html>